
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_drm_client {int * drm; int list; } ;
struct tegra_drm {int clients_lock; } ;


 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int tegra_drm_unregister_client(struct tegra_drm *tegra,
    struct tegra_drm_client *client)
{
 mutex_lock(&tegra->clients_lock);
 list_del_init(&client->list);
 client->drm = ((void*)0);
 mutex_unlock(&tegra->clients_lock);

 return 0;
}
