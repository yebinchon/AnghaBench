
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_th_subdevice {scalar_t__ type; scalar_t__ otype; } ;
struct intel_th_device {int dummy; } ;
struct intel_th {int num_thdevs; struct intel_th_device** thdev; } ;


 int ARRAY_SIZE (struct intel_th_subdevice*) ;
 int ENODEV ;
 scalar_t__ GTH_NONE ;
 scalar_t__ INTEL_TH_CAP (struct intel_th*,int ) ;
 scalar_t__ INTEL_TH_OUTPUT ;
 scalar_t__ IS_ERR (struct intel_th_device*) ;
 int PTR_ERR (struct intel_th_device*) ;
 scalar_t__ host_mode ;
 int host_mode_only ;
 struct intel_th_device* intel_th_subdevice_alloc (struct intel_th*,struct intel_th_subdevice const*) ;
 struct intel_th_subdevice* intel_th_subdevices ;

__attribute__((used)) static int intel_th_populate(struct intel_th *th)
{
 int src;


 for (src = 0; src < ARRAY_SIZE(intel_th_subdevices); src++) {
  const struct intel_th_subdevice *subdev =
   &intel_th_subdevices[src];
  struct intel_th_device *thdev;


  if ((INTEL_TH_CAP(th, host_mode_only) || host_mode) &&
      subdev->type == INTEL_TH_OUTPUT)
   continue;





  if (subdev->type == INTEL_TH_OUTPUT &&
      subdev->otype != GTH_NONE)
   continue;

  thdev = intel_th_subdevice_alloc(th, subdev);

  if (IS_ERR(thdev)) {

   if (PTR_ERR(thdev) == -ENODEV)
    continue;

   return PTR_ERR(thdev);
  }

  th->thdev[th->num_thdevs++] = thdev;
 }

 return 0;
}
