
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adf_cfg_section {int list; int param_head; int name; } ;
struct adf_cfg_device_data {int lock; int sec_list; } ;
struct adf_accel_dev {struct adf_cfg_device_data* cfg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct adf_cfg_section* adf_cfg_sec_find (struct adf_accel_dev*,char const*) ;
 int down_write (int *) ;
 struct adf_cfg_section* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int strlcpy (int ,char const*,int) ;
 int up_write (int *) ;

int adf_cfg_section_add(struct adf_accel_dev *accel_dev, const char *name)
{
 struct adf_cfg_device_data *cfg = accel_dev->cfg;
 struct adf_cfg_section *sec = adf_cfg_sec_find(accel_dev, name);

 if (sec)
  return 0;

 sec = kzalloc(sizeof(*sec), GFP_KERNEL);
 if (!sec)
  return -ENOMEM;

 strlcpy(sec->name, name, sizeof(sec->name));
 INIT_LIST_HEAD(&sec->param_head);
 down_write(&cfg->lock);
 list_add_tail(&sec->list, &cfg->sec_list);
 up_write(&cfg->lock);
 return 0;
}
