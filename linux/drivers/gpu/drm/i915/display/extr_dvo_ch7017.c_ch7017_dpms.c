
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 int CH7017_DAC0_POWER_DOWN ;
 int CH7017_DAC1_POWER_DOWN ;
 int CH7017_DAC2_POWER_DOWN ;
 int CH7017_DAC3_POWER_DOWN ;
 int CH7017_LVDS_POWER_DOWN ;
 int CH7017_LVDS_POWER_DOWN_EN ;
 int CH7017_POWER_MANAGEMENT ;
 int CH7017_TV_POWER_DOWN_EN ;
 int ch7017_read (struct intel_dvo_device*,int ,int*) ;
 int ch7017_write (struct intel_dvo_device*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void ch7017_dpms(struct intel_dvo_device *dvo, bool enable)
{
 u8 val;

 ch7017_read(dvo, CH7017_LVDS_POWER_DOWN, &val);


 ch7017_write(dvo, CH7017_POWER_MANAGEMENT,
   CH7017_DAC0_POWER_DOWN |
   CH7017_DAC1_POWER_DOWN |
   CH7017_DAC2_POWER_DOWN |
   CH7017_DAC3_POWER_DOWN |
   CH7017_TV_POWER_DOWN_EN);

 if (enable) {

  ch7017_write(dvo, CH7017_LVDS_POWER_DOWN,
        val & ~CH7017_LVDS_POWER_DOWN_EN);
 } else {

  ch7017_write(dvo, CH7017_LVDS_POWER_DOWN,
        val | CH7017_LVDS_POWER_DOWN_EN);
 }


 msleep(20);
}
