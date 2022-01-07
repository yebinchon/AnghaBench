
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sca3000_state {int * tx; int us; } ;


 int SCA3000_WRITE_REG (int ) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int sca3000_write_reg(struct sca3000_state *st, u8 address, u8 val)
{
 st->tx[0] = SCA3000_WRITE_REG(address);
 st->tx[1] = val;
 return spi_write(st->us, st->tx, 2);
}
