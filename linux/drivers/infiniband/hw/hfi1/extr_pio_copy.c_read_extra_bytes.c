
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * val8; } ;
struct pio_buf {size_t carry_bytes; TYPE_1__ carry; } ;


 int jcopy (int *,void const*,unsigned int) ;

__attribute__((used)) static inline void read_extra_bytes(struct pio_buf *pbuf,
        const void *from, unsigned int nbytes)
{
 jcopy(&pbuf->carry.val8[pbuf->carry_bytes], from, nbytes);
 pbuf->carry_bytes += nbytes;
}
