
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sample; } ;
struct ad7266_state {TYPE_1__ data; int spi; } ;


 int spi_read (int ,int *,int) ;

__attribute__((used)) static int ad7266_wakeup(struct ad7266_state *st)
{

 return spi_read(st->spi, &st->data.sample[0], 2);
}
