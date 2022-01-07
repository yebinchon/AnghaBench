
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {int rx_bufs; int tx_bufs; int flags; int rx_ptr_boundary; TYPE_1__* mmap_cfg; } ;
struct TYPE_2__ {int rx_bufs; int tx_bufs; int rx_ptr_boundary; } ;


 int CS_FEAT_ROLLING_RX_COUNTER ;
 int RX_PTR_BOUNDARY_SHIFT ;

__attribute__((used)) static void set_buffer_sizes(struct cs_hsi_iface *hi, int rx_bufs, int tx_bufs)
{
 hi->rx_bufs = rx_bufs;
 hi->tx_bufs = tx_bufs;
 hi->mmap_cfg->rx_bufs = rx_bufs;
 hi->mmap_cfg->tx_bufs = tx_bufs;

 if (hi->flags & CS_FEAT_ROLLING_RX_COUNTER) {







  hi->rx_ptr_boundary = (rx_bufs << RX_PTR_BOUNDARY_SHIFT);
  hi->mmap_cfg->rx_ptr_boundary = hi->rx_ptr_boundary;
 } else {
  hi->rx_ptr_boundary = hi->rx_bufs;
 }
}
