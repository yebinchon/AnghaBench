
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
struct ad8801_state {int data; int spi; } ;


 unsigned char AD8801_CFG_ADDR_OFFSET ;
 int cpu_to_be16 (unsigned char) ;
 int spi_write (int ,int *,int) ;

__attribute__((used)) static int ad8801_spi_write(struct ad8801_state *state,
 u8 channel, unsigned char value)
{
 state->data = cpu_to_be16((channel << AD8801_CFG_ADDR_OFFSET) | value);
 return spi_write(state->spi, &state->data, sizeof(state->data));
}
