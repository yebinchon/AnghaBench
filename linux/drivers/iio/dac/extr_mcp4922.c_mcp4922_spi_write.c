
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct mcp4922_state {int* mosi; int spi; } ;


 int spi_write (int ,int*,int) ;

__attribute__((used)) static int mcp4922_spi_write(struct mcp4922_state *state, u8 addr, u32 val)
{
 state->mosi[1] = val & 0xff;
 state->mosi[0] = (addr == 0) ? 0x00 : 0x80;
 state->mosi[0] |= 0x30 | ((val >> 8) & 0x0f);

 return spi_write(state->spi, state->mosi, 2);
}
