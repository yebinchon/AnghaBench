
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct arcpgu_drm_private {scalar_t__ regs; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 arc_pgu_read(struct arcpgu_drm_private *arcpgu,
          unsigned int reg)
{
 return ioread32(arcpgu->regs + reg);
}
