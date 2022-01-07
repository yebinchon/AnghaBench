
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct module {int dummy; } ;
struct dvb_adapter {int num; char const* name; int list_head; int mdev_lock; int mfe_lock; int * mfe_dvbdev; scalar_t__ mfe_shared; struct device* device; struct module* module; int device_list; } ;
struct device {int dummy; } ;


 int DVB_MAX_ADAPTERS ;
 int ENFILE ;
 int INIT_LIST_HEAD (int *) ;
 int dvb_adapter_list ;
 scalar_t__ dvbdev_check_free_adapter_num (int) ;
 int dvbdev_get_free_adapter_num () ;
 int dvbdev_register_lock ;
 int list_add_tail (int *,int *) ;
 int memset (struct dvb_adapter*,int ,int) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,char const*) ;

int dvb_register_adapter(struct dvb_adapter *adap, const char *name,
    struct module *module, struct device *device,
    short *adapter_nums)
{
 int i, num;

 mutex_lock(&dvbdev_register_lock);

 for (i = 0; i < DVB_MAX_ADAPTERS; ++i) {
  num = adapter_nums[i];
  if (num >= 0 && num < DVB_MAX_ADAPTERS) {

   if (dvbdev_check_free_adapter_num(num))
    break;
  } else {
   num = dvbdev_get_free_adapter_num();
   break;
  }
  num = -1;
 }

 if (num < 0) {
  mutex_unlock(&dvbdev_register_lock);
  return -ENFILE;
 }

 memset (adap, 0, sizeof(struct dvb_adapter));
 INIT_LIST_HEAD (&adap->device_list);

 pr_info("DVB: registering new adapter (%s)\n", name);

 adap->num = num;
 adap->name = name;
 adap->module = module;
 adap->device = device;
 adap->mfe_shared = 0;
 adap->mfe_dvbdev = ((void*)0);
 mutex_init (&adap->mfe_lock);





 list_add_tail (&adap->list_head, &dvb_adapter_list);

 mutex_unlock(&dvbdev_register_lock);

 return num;
}
