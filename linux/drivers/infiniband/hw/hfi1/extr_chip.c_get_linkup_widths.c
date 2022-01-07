
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct hfi1_devdata {int dummy; } ;


 int get_link_widths (struct hfi1_devdata*,int*,int*) ;
 int link_width_to_bits (struct hfi1_devdata*,int) ;
 int read_vc_local_link_mode (struct hfi1_devdata*,int *,int *,int*) ;

__attribute__((used)) static void get_linkup_widths(struct hfi1_devdata *dd, u16 *tx_width,
         u16 *rx_width)
{
 u16 widths, tx, rx;
 u8 misc_bits, local_flags;
 u16 active_tx, active_rx;

 read_vc_local_link_mode(dd, &misc_bits, &local_flags, &widths);
 tx = widths >> 12;
 rx = (widths >> 8) & 0xf;

 *tx_width = link_width_to_bits(dd, tx);
 *rx_width = link_width_to_bits(dd, rx);


 get_link_widths(dd, &active_tx, &active_rx);
}
