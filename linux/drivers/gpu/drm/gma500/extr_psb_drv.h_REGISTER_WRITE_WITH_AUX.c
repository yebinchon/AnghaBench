
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_device {int dummy; } ;


 int REG_WRITE (int ,int ) ;
 int REG_WRITE_AUX (int ,int ) ;

__attribute__((used)) static inline void REGISTER_WRITE_WITH_AUX(struct drm_device *dev, uint32_t reg,
          uint32_t val, int aux)
{
 if (aux)
  REG_WRITE_AUX(reg, val);
 else
  REG_WRITE(reg, val);
}
