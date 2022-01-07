
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int new_layout; int layout; struct faulty_conf* private; } ;
struct faulty_conf {int* period; int * counters; scalar_t__ nfaults; } ;


 int ClearErrors ;
 int ClearFaults ;
 int EINVAL ;
 int ModeMask ;
 int ModeShift ;
 int Modes ;
 int atomic_set (int *,int) ;

__attribute__((used)) static int faulty_reshape(struct mddev *mddev)
{
 int mode = mddev->new_layout & ModeMask;
 int count = mddev->new_layout >> ModeShift;
 struct faulty_conf *conf = mddev->private;

 if (mddev->new_layout < 0)
  return 0;


 if (mode == ClearFaults)
  conf->nfaults = 0;
 else if (mode == ClearErrors) {
  int i;
  for (i=0 ; i < Modes ; i++) {
   conf->period[i] = 0;
   atomic_set(&conf->counters[i], 0);
  }
 } else if (mode < Modes) {
  conf->period[mode] = count;
  if (!count) count++;
  atomic_set(&conf->counters[mode], count);
 } else
  return -EINVAL;
 mddev->new_layout = -1;
 mddev->layout = -1;
 return 0;
}
