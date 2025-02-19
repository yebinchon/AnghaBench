
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct cdns_i3c_master {scalar_t__ regs; } ;


 scalar_t__ RX_FIFO ;
 int memcpy (int *,int *,int) ;
 int readsl (scalar_t__,int *,int) ;

__attribute__((used)) static void cdns_i3c_master_rd_from_rx_fifo(struct cdns_i3c_master *master,
         u8 *bytes, int nbytes)
{
 readsl(master->regs + RX_FIFO, bytes, nbytes / 4);
 if (nbytes & 3) {
  u32 tmp;

  readsl(master->regs + RX_FIFO, &tmp, 1);
  memcpy(bytes + (nbytes & ~3), &tmp, nbytes & 3);
 }
}
