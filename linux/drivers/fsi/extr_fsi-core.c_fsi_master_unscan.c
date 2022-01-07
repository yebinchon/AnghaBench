
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsi_master {int dev; } ;


 int device_for_each_child (int *,int *,int ) ;
 int fsi_master_remove_slave ;

__attribute__((used)) static void fsi_master_unscan(struct fsi_master *master)
{
 device_for_each_child(&master->dev, ((void*)0), fsi_master_remove_slave);
}
