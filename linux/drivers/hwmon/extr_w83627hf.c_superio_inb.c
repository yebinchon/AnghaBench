
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {scalar_t__ sioaddr; } ;


 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static inline int
superio_inb(struct w83627hf_sio_data *sio, int reg)
{
 outb(reg, sio->sioaddr);
 return inb(sio->sioaddr + 1);
}
