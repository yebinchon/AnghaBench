
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_ib_dev {int iov_parent; int ports_parent; } ;


 int kobject_put (int ) ;
 int unregister_alias_guid_tree (struct mlx4_ib_dev*) ;
 int unregister_pkey_tree (struct mlx4_ib_dev*) ;

void mlx4_ib_device_unregister_sysfs(struct mlx4_ib_dev *device)
{
 unregister_alias_guid_tree(device);
 unregister_pkey_tree(device);
 kobject_put(device->ports_parent);
 kobject_put(device->iov_parent);
 kobject_put(device->iov_parent);
}
