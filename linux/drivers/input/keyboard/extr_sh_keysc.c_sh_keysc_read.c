
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_keysc_priv {scalar_t__ iomem_base; } ;


 unsigned long ioread16 (scalar_t__) ;

__attribute__((used)) static unsigned long sh_keysc_read(struct sh_keysc_priv *p, int reg_nr)
{
 return ioread16(p->iomem_base + (reg_nr << 2));
}
