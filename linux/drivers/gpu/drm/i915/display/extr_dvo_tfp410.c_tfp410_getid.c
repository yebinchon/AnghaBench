
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dvo_device {int dummy; } ;


 scalar_t__ tfp410_readb (struct intel_dvo_device*,int,int*) ;

__attribute__((used)) static int tfp410_getid(struct intel_dvo_device *dvo, int addr)
{
 u8 ch1, ch2;

 if (tfp410_readb(dvo, addr+0, &ch1) &&
     tfp410_readb(dvo, addr+1, &ch2))
  return ((ch2 << 8) & 0xFF00) | (ch1 & 0x00FF);

 return -1;
}
