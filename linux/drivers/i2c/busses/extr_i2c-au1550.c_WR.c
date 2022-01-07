
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_au1550_data {scalar_t__ psc_base; } ;


 int __raw_writel (unsigned long,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static inline void WR(struct i2c_au1550_data *a, int r, unsigned long v)
{
 __raw_writel(v, a->psc_base + r);
 wmb();
}
