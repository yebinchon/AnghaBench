
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ioatdma_chan {scalar_t__ reg_base; TYPE_1__* ioat_dma; } ;
struct TYPE_2__ {int version; } ;


 scalar_t__ IOAT_CHANCMD_OFFSET (int ) ;
 int IOAT_CHANCMD_RESET ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static inline void ioat_reset(struct ioatdma_chan *ioat_chan)
{
 u8 ver = ioat_chan->ioat_dma->version;

 writeb(IOAT_CHANCMD_RESET,
        ioat_chan->reg_base + IOAT_CHANCMD_OFFSET(ver));
}
