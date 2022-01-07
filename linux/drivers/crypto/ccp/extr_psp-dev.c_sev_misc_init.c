
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct psp_device {TYPE_1__* sev_misc; int sev_int_queue; struct device* dev; } ;
struct miscdevice {int * fops; int name; int minor; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int refcount; struct miscdevice misc; } ;


 int DEVICE_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MISC_DYNAMIC_MINOR ;
 int dev_dbg (struct device*,char*) ;
 TYPE_1__* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int kref_get (int *) ;
 int kref_init (int *) ;
 TYPE_1__* misc_dev ;
 int misc_register (struct miscdevice*) ;
 int sev_fops ;

__attribute__((used)) static int sev_misc_init(struct psp_device *psp)
{
 struct device *dev = psp->dev;
 int ret;
 if (!misc_dev) {
  struct miscdevice *misc;

  misc_dev = devm_kzalloc(dev, sizeof(*misc_dev), GFP_KERNEL);
  if (!misc_dev)
   return -ENOMEM;

  misc = &misc_dev->misc;
  misc->minor = MISC_DYNAMIC_MINOR;
  misc->name = DEVICE_NAME;
  misc->fops = &sev_fops;

  ret = misc_register(misc);
  if (ret)
   return ret;

  kref_init(&misc_dev->refcount);
 } else {
  kref_get(&misc_dev->refcount);
 }

 init_waitqueue_head(&psp->sev_int_queue);
 psp->sev_misc = misc_dev;
 dev_dbg(dev, "registered SEV device\n");

 return 0;
}
