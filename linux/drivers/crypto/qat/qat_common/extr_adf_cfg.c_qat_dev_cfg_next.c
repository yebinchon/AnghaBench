
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct adf_cfg_device_data* private; } ;
struct adf_cfg_device_data {int sec_list; } ;
typedef int loff_t ;


 void* seq_list_next (void*,int *,int *) ;

__attribute__((used)) static void *qat_dev_cfg_next(struct seq_file *sfile, void *v, loff_t *pos)
{
 struct adf_cfg_device_data *dev_cfg = sfile->private;

 return seq_list_next(v, &dev_cfg->sec_list, pos);
}
