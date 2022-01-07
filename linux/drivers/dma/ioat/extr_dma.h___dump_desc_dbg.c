
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioatdma_chan {int dummy; } ;
struct TYPE_2__ {int compl_write; int int_en; int op; } ;
struct ioat_dma_descriptor {TYPE_1__ ctl_f; int ctl; scalar_t__ next; } ;
struct dma_async_tx_descriptor {int flags; int cookie; scalar_t__ phys; } ;
struct device {int dummy; } ;


 int dev_dbg (struct device*,char*,int,unsigned long long,unsigned long long,int ,int ,int ,int ,int ,int ) ;
 struct device* to_dev (struct ioatdma_chan*) ;

__attribute__((used)) static inline void
__dump_desc_dbg(struct ioatdma_chan *ioat_chan, struct ioat_dma_descriptor *hw,
  struct dma_async_tx_descriptor *tx, int id)
{
 struct device *dev = to_dev(ioat_chan);

 dev_dbg(dev, "desc[%d]: (%#llx->%#llx) cookie: %d flags: %#x"
  " ctl: %#10.8x (op: %#x int_en: %d compl: %d)\n", id,
  (unsigned long long) tx->phys,
  (unsigned long long) hw->next, tx->cookie, tx->flags,
  hw->ctl, hw->ctl_f.op, hw->ctl_f.int_en, hw->ctl_f.compl_write);
}
