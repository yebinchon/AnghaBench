
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct edma_cc {int dummy; } ;
typedef int dma_addr_t ;


 unsigned int EDMA_CHAN_SLOT (unsigned int) ;
 scalar_t__ PARM_DST ;
 int PARM_OFFSET (unsigned int) ;
 scalar_t__ PARM_SRC ;
 int edma_read (struct edma_cc*,int ) ;

__attribute__((used)) static dma_addr_t edma_get_position(struct edma_cc *ecc, unsigned slot,
        bool dst)
{
 u32 offs;

 slot = EDMA_CHAN_SLOT(slot);
 offs = PARM_OFFSET(slot);
 offs += dst ? PARM_DST : PARM_SRC;

 return edma_read(ecc, offs);
}
