
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hi8435_priv {int* reg_buffer; int spi; } ;


 int HI8435_WRITE_OPCODE ;
 int spi_write (int ,int*,int) ;

__attribute__((used)) static int hi8435_writew(struct hi8435_priv *priv, u8 reg, u16 val)
{
 priv->reg_buffer[0] = reg | HI8435_WRITE_OPCODE;
 priv->reg_buffer[1] = (val >> 8) & 0xff;
 priv->reg_buffer[2] = val & 0xff;

 return spi_write(priv->spi, priv->reg_buffer, 3);
}
