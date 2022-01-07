
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sample; } ;
struct ad7266_state {TYPE_1__ data; int single_msg; int spi; } ;


 int ad7266_select_input (struct ad7266_state*,unsigned int) ;
 int be16_to_cpu (int ) ;
 int spi_sync (int ,int *) ;

__attribute__((used)) static int ad7266_read_single(struct ad7266_state *st, int *val,
 unsigned int address)
{
 int ret;

 ad7266_select_input(st, address);

 ret = spi_sync(st->spi, &st->single_msg);
 *val = be16_to_cpu(st->data.sample[address % 2]);

 return ret;
}
