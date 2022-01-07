
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int WB_SIO_REG_LOGICAL ;
 int outb (int ,unsigned long) ;

__attribute__((used)) static void winbond_sio_select_logical(unsigned long base, u8 dev)
{
 outb(WB_SIO_REG_LOGICAL, base);
 outb(dev, base + 1);
}
