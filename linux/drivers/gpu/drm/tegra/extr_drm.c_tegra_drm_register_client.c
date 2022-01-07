
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_client {struct tegra_drm* drm; int list; } ;
struct tegra_drm {int clients_lock; int clients; } ;


 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int tegra_drm_register_client(struct tegra_drm *tegra,
         struct tegra_drm_client *client)
{
 mutex_lock(&tegra->clients_lock);
 list_add_tail(&client->list, &tegra->clients);
 client->drm = tegra;
 mutex_unlock(&tegra->clients_lock);

 return 0;
}
