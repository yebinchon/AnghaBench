
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cami2c {int dummy; } ;


 int I2CMCR ;
 int IN32 (struct cami2c*,int ) ;
 int MCR_FSDA ;

__attribute__((used)) static inline int sh7760_i2c_busy_check(struct cami2c *id)
{
 return (IN32(id, I2CMCR) & MCR_FSDA);
}
