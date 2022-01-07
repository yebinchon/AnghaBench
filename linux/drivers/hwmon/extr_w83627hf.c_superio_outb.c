
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w83627hf_sio_data {scalar_t__ sioaddr; } ;


 int outb (int,scalar_t__) ;

__attribute__((used)) static inline void
superio_outb(struct w83627hf_sio_data *sio, int reg, int val)
{
 outb(reg, sio->sioaddr);
 outb(val, sio->sioaddr + 1);
}
