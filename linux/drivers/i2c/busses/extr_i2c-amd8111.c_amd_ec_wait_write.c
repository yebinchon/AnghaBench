
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_smbus {TYPE_1__* dev; scalar_t__ base; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ AMD_EC_SC ;
 int AMD_EC_SC_IBF ;
 int ETIMEDOUT ;
 int dev_warn (int *,char*) ;
 int inb (scalar_t__) ;
 int udelay (int) ;

__attribute__((used)) static int amd_ec_wait_write(struct amd_smbus *smbus)
{
 int timeout = 500;

 while ((inb(smbus->base + AMD_EC_SC) & AMD_EC_SC_IBF) && --timeout)
  udelay(1);

 if (!timeout) {
  dev_warn(&smbus->dev->dev,
    "Timeout while waiting for IBF to clear\n");
  return -ETIMEDOUT;
 }

 return 0;
}
