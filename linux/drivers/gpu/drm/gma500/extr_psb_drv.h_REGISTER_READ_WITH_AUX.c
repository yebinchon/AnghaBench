
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_device {int dummy; } ;


 int REG_READ (int ) ;
 int REG_READ_AUX (int ) ;

__attribute__((used)) static inline uint32_t REGISTER_READ_WITH_AUX(struct drm_device *dev,
           uint32_t reg, int aux)
{
 uint32_t val;

 if (aux)
  val = REG_READ_AUX(reg);
 else
  val = REG_READ(reg);

 return val;
}
