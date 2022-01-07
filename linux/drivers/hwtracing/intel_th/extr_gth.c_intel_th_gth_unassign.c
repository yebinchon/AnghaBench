
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int port; int active; } ;
struct intel_th_device {TYPE_1__ output; scalar_t__ host_mode; int dev; } ;
struct gth_device {int* master; int gth_lock; TYPE_2__* output; } ;
struct TYPE_4__ {int * output; } ;


 int TH_CONFIGURABLE_MASTERS ;
 struct gth_device* dev_get_drvdata (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void intel_th_gth_unassign(struct intel_th_device *thdev,
      struct intel_th_device *othdev)
{
 struct gth_device *gth = dev_get_drvdata(&thdev->dev);
 int port = othdev->output.port;
 int master;

 if (thdev->host_mode)
  return;

 spin_lock(&gth->gth_lock);
 othdev->output.port = -1;
 othdev->output.active = 0;
 gth->output[port].output = ((void*)0);
 for (master = 0; master <= TH_CONFIGURABLE_MASTERS; master++)
  if (gth->master[master] == port)
   gth->master[master] = -1;
 spin_unlock(&gth->gth_lock);
}
