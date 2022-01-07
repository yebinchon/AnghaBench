
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct em_i2c_device {int base; } ;


 int readb (int) ;
 int writeb (int,int) ;

__attribute__((used)) static inline void em_clear_set_bit(struct em_i2c_device *priv, u8 clear, u8 set, u8 reg)
{
 writeb((readb(priv->base + reg) & ~clear) | set, priv->base + reg);
}
