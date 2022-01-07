
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static u16 ad7616_spi_rd_wr_cmd(int addr, char isWriteOp)
{




 return ((addr & 0x7F) << 1) | ((isWriteOp & 0x1) << 7);
}
