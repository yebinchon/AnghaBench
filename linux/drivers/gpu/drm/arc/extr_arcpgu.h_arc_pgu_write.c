
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arcpgu_drm_private {scalar_t__ regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void arc_pgu_write(struct arcpgu_drm_private *arcpgu,
     unsigned int reg, u32 value)
{
 iowrite32(value, arcpgu->regs + reg);
}
