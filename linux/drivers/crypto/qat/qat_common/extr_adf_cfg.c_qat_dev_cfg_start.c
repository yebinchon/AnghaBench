
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct adf_cfg_device_data* private; } ;
struct adf_cfg_device_data {int sec_list; } ;
typedef int loff_t ;


 int mutex_lock (int *) ;
 int qat_cfg_read_lock ;
 void* seq_list_start (int *,int ) ;

__attribute__((used)) static void *qat_dev_cfg_start(struct seq_file *sfile, loff_t *pos)
{
 struct adf_cfg_device_data *dev_cfg = sfile->private;

 mutex_lock(&qat_cfg_read_lock);
 return seq_list_start(&dev_cfg->sec_list, *pos);
}
