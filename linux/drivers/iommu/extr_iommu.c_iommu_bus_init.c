
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int notifier_call; } ;
struct iommu_ops {int dummy; } ;
struct bus_type {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int add_iommu_group ;
 int bus_for_each_dev (struct bus_type*,int *,int *,int ) ;
 int bus_register_notifier (struct bus_type*,struct notifier_block*) ;
 int bus_unregister_notifier (struct bus_type*,struct notifier_block*) ;
 int iommu_bus_notifier ;
 int kfree (struct notifier_block*) ;
 struct notifier_block* kzalloc (int,int ) ;
 int remove_iommu_group ;

__attribute__((used)) static int iommu_bus_init(struct bus_type *bus, const struct iommu_ops *ops)
{
 int err;
 struct notifier_block *nb;

 nb = kzalloc(sizeof(struct notifier_block), GFP_KERNEL);
 if (!nb)
  return -ENOMEM;

 nb->notifier_call = iommu_bus_notifier;

 err = bus_register_notifier(bus, nb);
 if (err)
  goto out_free;

 err = bus_for_each_dev(bus, ((void*)0), ((void*)0), add_iommu_group);
 if (err)
  goto out_err;


 return 0;

out_err:

 bus_for_each_dev(bus, ((void*)0), ((void*)0), remove_iommu_group);
 bus_unregister_notifier(bus, nb);

out_free:
 kfree(nb);

 return err;
}
