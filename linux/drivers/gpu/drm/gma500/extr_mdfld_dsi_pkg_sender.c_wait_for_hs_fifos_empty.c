
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_pkg_sender {int dummy; } ;


 int BIT (int) ;
 int wait_for_gen_fifo_empty (struct mdfld_dsi_pkg_sender*,int) ;

__attribute__((used)) static int wait_for_hs_fifos_empty(struct mdfld_dsi_pkg_sender *sender)
{
 return wait_for_gen_fifo_empty(sender, (BIT(2) | BIT(18)));
}
