
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs_hsi_iface {int data_tx_msg; int data_rx_msg; } ;


 int cs_hsi_free_data_msg (int ) ;

__attribute__((used)) static void cs_hsi_free_data(struct cs_hsi_iface *hi)
{
 cs_hsi_free_data_msg(hi->data_rx_msg);
 cs_hsi_free_data_msg(hi->data_tx_msg);
}
