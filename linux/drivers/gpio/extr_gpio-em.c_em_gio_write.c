
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_gio_priv {int base0; int base1; } ;


 int GIO_IDT0 ;
 int iowrite32 (unsigned long,int) ;

__attribute__((used)) static inline void em_gio_write(struct em_gio_priv *p, int offs,
    unsigned long value)
{
 if (offs < GIO_IDT0)
  iowrite32(value, p->base0 + offs);
 else
  iowrite32(value, p->base1 + (offs - GIO_IDT0));
}
