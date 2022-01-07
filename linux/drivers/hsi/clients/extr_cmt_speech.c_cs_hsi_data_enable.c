
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cs_hsi_iface {scalar_t__ buf_size; unsigned int slot_size; unsigned int* rx_offsets; unsigned int* tx_offsets; int iface_state; TYPE_2__* cl; TYPE_1__* mmap_cfg; } ;
struct cs_buffer_config {int tx_bufs; int rx_bufs; } ;
struct TYPE_4__ {int device; } ;
struct TYPE_3__ {unsigned int rx_bufs; unsigned int* rx_offsets; unsigned int tx_bufs; unsigned int* tx_offsets; } ;


 int BUG_ON (int) ;
 int CS_STATE_CONFIGURED ;
 void* L1_CACHE_ALIGN (int) ;
 int L1_CACHE_BYTES ;
 int dev_dbg (int *,char*,unsigned int,unsigned int,...) ;
 int set_buffer_sizes (struct cs_hsi_iface*,int ,int ) ;

__attribute__((used)) static void cs_hsi_data_enable(struct cs_hsi_iface *hi,
     struct cs_buffer_config *buf_cfg)
{
 unsigned int data_start, i;

 BUG_ON(hi->buf_size == 0);

 set_buffer_sizes(hi, buf_cfg->rx_bufs, buf_cfg->tx_bufs);

 hi->slot_size = L1_CACHE_ALIGN(hi->buf_size);
 dev_dbg(&hi->cl->device,
   "setting slot size to %u, buf size %u, align %u\n",
   hi->slot_size, hi->buf_size, L1_CACHE_BYTES);

 data_start = L1_CACHE_ALIGN(sizeof(*hi->mmap_cfg));
 dev_dbg(&hi->cl->device,
   "setting data start at %u, cfg block %u, align %u\n",
   data_start, sizeof(*hi->mmap_cfg), L1_CACHE_BYTES);

 for (i = 0; i < hi->mmap_cfg->rx_bufs; i++) {
  hi->rx_offsets[i] = data_start + i * hi->slot_size;
  hi->mmap_cfg->rx_offsets[i] = hi->rx_offsets[i];
  dev_dbg(&hi->cl->device, "DL buf #%u at %u\n",
     i, hi->rx_offsets[i]);
 }
 for (i = 0; i < hi->mmap_cfg->tx_bufs; i++) {
  hi->tx_offsets[i] = data_start +
   (i + hi->mmap_cfg->rx_bufs) * hi->slot_size;
  hi->mmap_cfg->tx_offsets[i] = hi->tx_offsets[i];
  dev_dbg(&hi->cl->device, "UL buf #%u at %u\n",
     i, hi->rx_offsets[i]);
 }

 hi->iface_state = CS_STATE_CONFIGURED;
}
