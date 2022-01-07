
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {scalar_t__ psc_base; } ;


 unsigned long __raw_readl (scalar_t__) ;

__attribute__((used)) static inline unsigned long RD(struct i2c_au1550_data *a, int r)
{
 return __raw_readl(a->psc_base + r);
}
