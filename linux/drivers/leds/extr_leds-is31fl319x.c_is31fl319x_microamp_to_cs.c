
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct device {int dummy; } ;


 int IS31FL319X_CONFIG2_CS_MASK ;
 int IS31FL319X_CONFIG2_CS_SHIFT ;
 int IS31FL319X_CONFIG2_CS_STEP_REF ;
 int IS31FL319X_CURRENT_STEP ;

__attribute__((used)) static inline int is31fl319x_microamp_to_cs(struct device *dev, u32 microamp)
{
 u32 step = microamp / IS31FL319X_CURRENT_STEP;

 return ((IS31FL319X_CONFIG2_CS_STEP_REF - step) &
  IS31FL319X_CONFIG2_CS_MASK) <<
  IS31FL319X_CONFIG2_CS_SHIFT;
}
