
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uflow_resources {size_t max; struct ib_uflow_resources* counters; void* collection; } ;


 int GFP_KERNEL ;
 void* kcalloc (size_t,int,int ) ;
 int kfree (struct ib_uflow_resources*) ;
 struct ib_uflow_resources* kzalloc (int,int ) ;

struct ib_uflow_resources *flow_resources_alloc(size_t num_specs)
{
 struct ib_uflow_resources *resources;

 resources = kzalloc(sizeof(*resources), GFP_KERNEL);

 if (!resources)
  return ((void*)0);

 if (!num_specs)
  goto out;

 resources->counters =
  kcalloc(num_specs, sizeof(*resources->counters), GFP_KERNEL);
 resources->collection =
  kcalloc(num_specs, sizeof(*resources->collection), GFP_KERNEL);

 if (!resources->counters || !resources->collection)
  goto err;

out:
 resources->max = num_specs;
 return resources;

err:
 kfree(resources->counters);
 kfree(resources);

 return ((void*)0);
}
