
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdfld_dsi_pkg_sender {int dummy; } ;


 scalar_t__ IS_ERR (struct mdfld_dsi_pkg_sender*) ;
 int kfree (struct mdfld_dsi_pkg_sender*) ;

void mdfld_dsi_pkg_sender_destroy(struct mdfld_dsi_pkg_sender *sender)
{
 if (!sender || IS_ERR(sender))
  return;


 kfree(sender);
}
