
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct intel_dvo_device {int dummy; } ;


 int VR01 ;
 int VR01_LCD_ENABLE ;
 int ivch_read (struct intel_dvo_device*,int ,int*) ;
 int ivch_reset (struct intel_dvo_device*) ;

__attribute__((used)) static bool ivch_get_hw_state(struct intel_dvo_device *dvo)
{
 u16 vr01;

 ivch_reset(dvo);


 if (!ivch_read(dvo, VR01, &vr01))
  return 0;

 if (vr01 & VR01_LCD_ENABLE)
  return 1;
 else
  return 0;
}
