
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct pdev_entry {unsigned int cpu; int list; struct platform_device* pdev; } ;


 int DRVNAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (struct pdev_entry*) ;
 struct pdev_entry* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pdev_list ;
 int pdev_list_mutex ;
 int platform_device_add (struct platform_device*) ;
 struct platform_device* platform_device_alloc (int ,unsigned int) ;
 int platform_device_put (struct platform_device*) ;
 int pr_err (char*,...) ;

__attribute__((used)) static int via_cputemp_online(unsigned int cpu)
{
 int err;
 struct platform_device *pdev;
 struct pdev_entry *pdev_entry;

 pdev = platform_device_alloc(DRVNAME, cpu);
 if (!pdev) {
  err = -ENOMEM;
  pr_err("Device allocation failed\n");
  goto exit;
 }

 pdev_entry = kzalloc(sizeof(struct pdev_entry), GFP_KERNEL);
 if (!pdev_entry) {
  err = -ENOMEM;
  goto exit_device_put;
 }

 err = platform_device_add(pdev);
 if (err) {
  pr_err("Device addition failed (%d)\n", err);
  goto exit_device_free;
 }

 pdev_entry->pdev = pdev;
 pdev_entry->cpu = cpu;
 mutex_lock(&pdev_list_mutex);
 list_add_tail(&pdev_entry->list, &pdev_list);
 mutex_unlock(&pdev_list_mutex);

 return 0;

exit_device_free:
 kfree(pdev_entry);
exit_device_put:
 platform_device_put(pdev);
exit:
 return err;
}
