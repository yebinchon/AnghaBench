
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fmt32; int addr_low; int lbea32; } ;
struct TYPE_4__ {int tx_submit; } ;
struct fsl_re_desc {int cf_paddr; int cdb_paddr; void* cdb_addr; void* cf_addr; TYPE_1__ hwdesc; int node; TYPE_2__ async_tx; struct fsl_re_chan* re_chan; } ;
struct fsl_re_chan {int chan; } ;
typedef int dma_addr_t ;


 int FSL_RE_CF_DESC_SIZE ;
 int FSL_RE_FRAME_FORMAT ;
 int FSL_RE_HWDESC_FMT_SHIFT ;
 int INIT_LIST_HEAD (int *) ;
 int dma_async_tx_descriptor_init (TYPE_2__*,int *) ;
 int fsl_re_tx_submit ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static struct fsl_re_desc *fsl_re_init_desc(struct fsl_re_chan *re_chan,
         struct fsl_re_desc *desc,
         void *cf, dma_addr_t paddr)
{
 desc->re_chan = re_chan;
 desc->async_tx.tx_submit = fsl_re_tx_submit;
 dma_async_tx_descriptor_init(&desc->async_tx, &re_chan->chan);
 INIT_LIST_HEAD(&desc->node);

 desc->hwdesc.fmt32 = FSL_RE_FRAME_FORMAT << FSL_RE_HWDESC_FMT_SHIFT;
 desc->hwdesc.lbea32 = upper_32_bits(paddr);
 desc->hwdesc.addr_low = lower_32_bits(paddr);
 desc->cf_addr = cf;
 desc->cf_paddr = paddr;

 desc->cdb_addr = (void *)(cf + FSL_RE_CF_DESC_SIZE);
 desc->cdb_paddr = paddr + FSL_RE_CF_DESC_SIZE;

 return desc;
}
