
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {unsigned int type; } ;
struct intel_th_device {scalar_t__ type; TYPE_1__ output; } ;
struct intel_th {int num_thdevs; struct intel_th_device** thdev; } ;
struct TYPE_6__ {scalar_t__ type; unsigned int otype; } ;


 int ARRAY_SIZE (TYPE_2__*) ;
 int ENODEV ;
 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ IS_ERR (struct intel_th_device*) ;
 int PTR_ERR (struct intel_th_device*) ;
 struct intel_th_device* intel_th_subdevice_alloc (struct intel_th*,TYPE_2__*) ;
 TYPE_2__* intel_th_subdevices ;

int intel_th_output_enable(struct intel_th *th, unsigned int otype)
{
 struct intel_th_device *thdev;
 int src = 0, dst = 0;

 for (src = 0, dst = 0; dst <= th->num_thdevs; src++, dst++) {
  for (; src < ARRAY_SIZE(intel_th_subdevices); src++) {
   if (intel_th_subdevices[src].type != INTEL_TH_OUTPUT)
    continue;

   if (intel_th_subdevices[src].otype != otype)
    continue;

   break;
  }


  if (src == ARRAY_SIZE(intel_th_subdevices))
   return -ENODEV;

  for (; dst < th->num_thdevs; dst++) {
   if (th->thdev[dst]->type != INTEL_TH_OUTPUT)
    continue;

   if (th->thdev[dst]->output.type != otype)
    continue;

   break;
  }





  if (dst == th->num_thdevs)
   goto found;
 }

 return -ENODEV;

found:
 thdev = intel_th_subdevice_alloc(th, &intel_th_subdevices[src]);
 if (IS_ERR(thdev))
  return PTR_ERR(thdev);

 th->thdev[th->num_thdevs++] = thdev;

 return 0;
}
