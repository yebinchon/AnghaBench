
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 int CH7xxx_PM ;
 int CH7xxx_PM_DVIL ;
 int CH7xxx_PM_DVIP ;
 int ch7xxx_readb (struct intel_dvo_device*,int ,int*) ;

__attribute__((used)) static bool ch7xxx_get_hw_state(struct intel_dvo_device *dvo)
{
 u8 val;

 ch7xxx_readb(dvo, CH7xxx_PM, &val);

 if (val & (CH7xxx_PM_DVIL | CH7xxx_PM_DVIP))
  return 1;
 else
  return 0;
}
