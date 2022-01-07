
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static inline int sch311x_sio_inb(int sio_config_port, int reg)
{
 outb(reg, sio_config_port);
 return inb(sio_config_port + 1);
}
