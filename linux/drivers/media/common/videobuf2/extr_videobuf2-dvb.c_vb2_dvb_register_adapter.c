
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mfe_shared; struct media_device* mdev; void* priv; } ;
struct vb2_dvb_frontends {TYPE_1__ adapter; int lock; } ;
struct module {int dummy; } ;
struct media_device {int dummy; } ;
struct device {int dummy; } ;


 int dvb_register_adapter (TYPE_1__*,char*,struct module*,struct device*,short*) ;
 int mutex_init (int *) ;
 int pr_warn (char*,char*,int) ;

__attribute__((used)) static int vb2_dvb_register_adapter(struct vb2_dvb_frontends *fe,
     struct module *module,
     void *adapter_priv,
     struct device *device,
     struct media_device *mdev,
     char *adapter_name,
     short *adapter_nr,
     int mfe_shared)
{
 int result;

 mutex_init(&fe->lock);


 result = dvb_register_adapter(&fe->adapter, adapter_name, module,
  device, adapter_nr);
 if (result < 0) {
  pr_warn("%s: dvb_register_adapter failed (errno = %d)\n",
         adapter_name, result);
 }
 fe->adapter.priv = adapter_priv;
 fe->adapter.mfe_shared = mfe_shared;




 return result;
}
