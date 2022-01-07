
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ocores_i2c {scalar_t__ iobase; } ;


 int inb (scalar_t__) ;

__attribute__((used)) static inline u8 oc_getreg_io_8(struct ocores_i2c *i2c, int reg)
{
 return inb(i2c->iobase + reg);
}
