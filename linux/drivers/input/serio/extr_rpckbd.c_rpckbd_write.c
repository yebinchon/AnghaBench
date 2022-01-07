
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serio {int dummy; } ;


 int IOMD_KARTTX ;
 int IOMD_KCTRL ;
 int cpu_relax () ;
 int iomd_readb (int ) ;
 int iomd_writeb (unsigned char,int ) ;

__attribute__((used)) static int rpckbd_write(struct serio *port, unsigned char val)
{
 while (!(iomd_readb(IOMD_KCTRL) & (1 << 7)))
  cpu_relax();

 iomd_writeb(val, IOMD_KARTTX);

 return 0;
}
