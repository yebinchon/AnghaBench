
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 int TFP410_CTL_1 ;
 int TFP410_CTL_1_PD ;
 int tfp410_readb (struct intel_dvo_device*,int ,int*) ;

__attribute__((used)) static bool tfp410_get_hw_state(struct intel_dvo_device *dvo)
{
 u8 ctl1;

 if (!tfp410_readb(dvo, TFP410_CTL_1, &ctl1))
  return 0;

 if (ctl1 & TFP410_CTL_1_PD)
  return 1;
 else
  return 0;
}
