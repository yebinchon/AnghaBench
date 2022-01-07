
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad5758_state {int * d32; int spi; } ;


 int AD5758_DIGITAL_DIAG_CONFIG ;
 int AD5758_WR_FLAG_MSK (int ) ;
 int cpu_to_be32 (unsigned int) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad5758_crc_disable(struct ad5758_state *st)
{
 unsigned int mask;

 mask = (AD5758_WR_FLAG_MSK(AD5758_DIGITAL_DIAG_CONFIG) << 24) | 0x5C3A;
 st->d32[0] = cpu_to_be32(mask);

 return spi_write(st->spi, &st->d32[0], 4);
}
