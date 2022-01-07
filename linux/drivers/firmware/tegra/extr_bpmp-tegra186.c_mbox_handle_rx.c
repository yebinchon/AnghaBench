
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_bpmp {int dummy; } ;
struct mbox_client {int dummy; } ;


 struct tegra_bpmp* mbox_client_to_bpmp (struct mbox_client*) ;
 int tegra_bpmp_handle_rx (struct tegra_bpmp*) ;

__attribute__((used)) static void mbox_handle_rx(struct mbox_client *client, void *data)
{
 struct tegra_bpmp *bpmp = mbox_client_to_bpmp(client);

 tegra_bpmp_handle_rx(bpmp);
}
