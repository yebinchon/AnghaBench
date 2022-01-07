
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_th_device {int dev; } ;
struct gth_device {int* master; int gth_lock; TYPE_1__* output; } ;
struct TYPE_2__ {int master; } ;


 unsigned int TH_CONFIGURABLE_MASTERS ;
 struct gth_device* dev_get_drvdata (int *) ;
 int set_bit (unsigned int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
intel_th_gth_set_output(struct intel_th_device *thdev, unsigned int master)
{
 struct gth_device *gth = dev_get_drvdata(&thdev->dev);
 int port = 0;





 if (master > TH_CONFIGURABLE_MASTERS)
  master = TH_CONFIGURABLE_MASTERS;

 spin_lock(&gth->gth_lock);
 if (gth->master[master] == -1) {
  set_bit(master, gth->output[port].master);
  gth->master[master] = port;
 }
 spin_unlock(&gth->gth_lock);

 return 0;
}
