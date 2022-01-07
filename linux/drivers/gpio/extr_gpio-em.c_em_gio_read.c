
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_gio_priv {int base0; int base1; } ;


 int GIO_IDT0 ;
 unsigned long ioread32 (int) ;

__attribute__((used)) static inline unsigned long em_gio_read(struct em_gio_priv *p, int offs)
{
 if (offs < GIO_IDT0)
  return ioread32(p->base0 + offs);
 else
  return ioread32(p->base1 + (offs - GIO_IDT0));
}
