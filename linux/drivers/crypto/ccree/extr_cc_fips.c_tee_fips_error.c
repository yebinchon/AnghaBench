
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 scalar_t__ fips_enabled ;
 int panic (char*) ;

__attribute__((used)) static inline void tee_fips_error(struct device *dev)
{
 if (fips_enabled)
  panic("ccree: TEE reported cryptographic error in fips mode!\n");
 else
  dev_err(dev, "TEE reported error!\n");
}
