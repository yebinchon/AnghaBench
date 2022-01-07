
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct picolcd_data {int mutex_flash; struct dentry* debug_flash; struct dentry* debug_eeprom; struct dentry* debug_reset; } ;
struct dentry {int dummy; } ;


 int debugfs_remove (struct dentry*) ;
 int mutex_destroy (int *) ;

void picolcd_exit_devfs(struct picolcd_data *data)
{
 struct dentry *dent;

 dent = data->debug_reset;
 data->debug_reset = ((void*)0);
 debugfs_remove(dent);
 dent = data->debug_eeprom;
 data->debug_eeprom = ((void*)0);
 debugfs_remove(dent);
 dent = data->debug_flash;
 data->debug_flash = ((void*)0);
 debugfs_remove(dent);
 mutex_destroy(&data->mutex_flash);
}
