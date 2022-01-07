
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct resource {int start; int name; int flags; } ;
struct device {int dummy; } ;
struct dev_dax {int target_node; struct resource* dax_kmem_res; TYPE_1__* region; } ;
typedef int resource_size_t ;
struct TYPE_2__ {struct resource res; } ;


 int ALIGN (int,int) ;
 int EBUSY ;
 int EINVAL ;
 int IORESOURCE_SYSTEM_RAM ;
 int add_memory (int,int,int) ;
 int dev_name (struct device*) ;
 int dev_warn (struct device*,char*,...) ;
 int kfree (struct resource*) ;
 int memory_block_size_bytes () ;
 int release_resource (struct resource*) ;
 struct resource* request_mem_region (int,int,int ) ;
 int resource_size (struct resource*) ;
 struct dev_dax* to_dev_dax (struct device*) ;

int dev_dax_kmem_probe(struct device *dev)
{
 struct dev_dax *dev_dax = to_dev_dax(dev);
 struct resource *res = &dev_dax->region->res;
 resource_size_t kmem_start;
 resource_size_t kmem_size;
 resource_size_t kmem_end;
 struct resource *new_res;
 int numa_node;
 int rc;







 numa_node = dev_dax->target_node;
 if (numa_node < 0) {
  dev_warn(dev, "rejecting DAX region %pR with invalid node: %d\n",
    res, numa_node);
  return -EINVAL;
 }


 kmem_start = ALIGN(res->start, memory_block_size_bytes());

 kmem_size = resource_size(res);

 kmem_size -= kmem_start - res->start;

 kmem_size &= ~(memory_block_size_bytes() - 1);
 kmem_end = kmem_start + kmem_size;


 new_res = request_mem_region(kmem_start, kmem_size, dev_name(dev));
 if (!new_res) {
  dev_warn(dev, "could not reserve region [%pa-%pa]\n",
    &kmem_start, &kmem_end);
  return -EBUSY;
 }







 new_res->flags = IORESOURCE_SYSTEM_RAM;
 new_res->name = dev_name(dev);

 rc = add_memory(numa_node, new_res->start, resource_size(new_res));
 if (rc) {
  release_resource(new_res);
  kfree(new_res);
  return rc;
 }
 dev_dax->dax_kmem_res = new_res;

 return 0;
}
