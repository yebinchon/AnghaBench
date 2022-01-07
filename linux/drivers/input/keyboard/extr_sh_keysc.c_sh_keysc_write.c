
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_keysc_priv {scalar_t__ iomem_base; } ;


 int iowrite16 (unsigned long,scalar_t__) ;

__attribute__((used)) static void sh_keysc_write(struct sh_keysc_priv *p, int reg_nr,
      unsigned long value)
{
 iowrite16(value, p->iomem_base + (reg_nr << 2));
}
