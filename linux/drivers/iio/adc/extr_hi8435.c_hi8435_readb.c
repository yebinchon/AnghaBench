
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hi8435_priv {int spi; } ;


 int HI8435_READ_OPCODE ;
 int spi_write_then_read (int ,int *,int,int *,int) ;

__attribute__((used)) static int hi8435_readb(struct hi8435_priv *priv, u8 reg, u8 *val)
{
 reg |= HI8435_READ_OPCODE;
 return spi_write_then_read(priv->spi, &reg, 1, val, 1);
}
