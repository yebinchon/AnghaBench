
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mipi_dsi_host {int list; int dev; } ;


 int device_for_each_child (int ,int *,int ) ;
 int host_lock ;
 int list_del_init (int *) ;
 int mipi_dsi_remove_device_fn ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void mipi_dsi_host_unregister(struct mipi_dsi_host *host)
{
 device_for_each_child(host->dev, ((void*)0), mipi_dsi_remove_device_fn);

 mutex_lock(&host_lock);
 list_del_init(&host->list);
 mutex_unlock(&host_lock);
}
