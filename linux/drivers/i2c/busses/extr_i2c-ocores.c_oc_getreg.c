
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {int (* getreg ) (struct ocores_i2c*,int) ;} ;


 int stub1 (struct ocores_i2c*,int) ;

__attribute__((used)) static inline u8 oc_getreg(struct ocores_i2c *i2c, int reg)
{
 return i2c->getreg(i2c, reg);
}
