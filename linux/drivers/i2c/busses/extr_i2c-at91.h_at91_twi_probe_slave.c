
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct at91_twi_dev {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static inline int at91_twi_probe_slave(struct platform_device *pdev,
           u32 phy_addr, struct at91_twi_dev *dev)
{
 return -EINVAL;
}
