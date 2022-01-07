
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_gvt {int dummy; } ;


 unsigned long intel_gvt_get_device_type (struct intel_gvt*) ;

bool intel_gvt_match_device(struct intel_gvt *gvt,
  unsigned long device)
{
 return intel_gvt_get_device_type(gvt) & device;
}
