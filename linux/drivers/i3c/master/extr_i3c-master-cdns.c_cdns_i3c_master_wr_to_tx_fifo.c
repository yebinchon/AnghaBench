
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int const u32 ;
struct cdns_i3c_master {scalar_t__ regs; } ;


 scalar_t__ TX_FIFO ;
 int memcpy (int const*,int const*,int) ;
 int writesl (scalar_t__,int const*,int) ;

__attribute__((used)) static void cdns_i3c_master_wr_to_tx_fifo(struct cdns_i3c_master *master,
       const u8 *bytes, int nbytes)
{
 writesl(master->regs + TX_FIFO, bytes, nbytes / 4);
 if (nbytes & 3) {
  u32 tmp = 0;

  memcpy(&tmp, bytes + (nbytes & ~3), nbytes & 3);
  writesl(master->regs + TX_FIFO, &tmp, 1);
 }
}
