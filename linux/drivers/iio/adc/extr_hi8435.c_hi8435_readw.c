
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hi8435_priv {int spi; } ;
typedef int __be16 ;


 int HI8435_READ_OPCODE ;
 int be16_to_cpu (int ) ;
 int spi_write_then_read (int ,int *,int,int *,int) ;

__attribute__((used)) static int hi8435_readw(struct hi8435_priv *priv, u8 reg, u16 *val)
{
 int ret;
 __be16 be_val;

 reg |= HI8435_READ_OPCODE;
 ret = spi_write_then_read(priv->spi, &reg, 1, &be_val, 2);
 *val = be16_to_cpu(be_val);

 return ret;
}
