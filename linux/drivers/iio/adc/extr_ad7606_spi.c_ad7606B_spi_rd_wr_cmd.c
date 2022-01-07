
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 ad7606B_spi_rd_wr_cmd(int addr, char is_write_op)
{





 return (addr & 0x3F) | (((~is_write_op) & 0x1) << 6);
}
