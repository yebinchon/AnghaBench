
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int * d32; int spi; } ;


 int AD5758_WR_FLAG_MSK (unsigned int) ;
 int cpu_to_be32 (int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5758_spi_reg_write(struct ad5758_state *st,
    unsigned int addr,
    unsigned int val)
{
 st->d32[0] = cpu_to_be32((AD5758_WR_FLAG_MSK(addr) << 24) |
     ((val & 0xFFFF) << 8));

 return spi_write(st->spi, &st->d32[0], sizeof(st->d32[0]));
}
