
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r10conf {int dummy; } ;
struct mddev {struct r10conf* private; } ;


 int lower_barrier (struct r10conf*) ;
 int raise_barrier (struct r10conf*,int ) ;

__attribute__((used)) static void raid10_quiesce(struct mddev *mddev, int quiesce)
{
 struct r10conf *conf = mddev->private;

 if (quiesce)
  raise_barrier(conf, 0);
 else
  lower_barrier(conf);
}
