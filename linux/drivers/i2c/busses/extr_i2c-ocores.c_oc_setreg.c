
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int (* setreg ) (struct ocores_i2c*,int,int ) ;} ;


 int stub1 (struct ocores_i2c*,int,int ) ;

__attribute__((used)) static inline void oc_setreg(struct ocores_i2c *i2c, int reg, u8 value)
{
 i2c->setreg(i2c, reg, value);
}
