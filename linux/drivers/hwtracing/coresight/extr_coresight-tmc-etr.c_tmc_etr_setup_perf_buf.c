
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int dummy; } ;
struct perf_event {int cpu; } ;
struct etr_perf_buffer {struct etr_buf* etr_buf; struct tmc_drvdata* drvdata; } ;
struct etr_buf {int dummy; } ;


 int ENOMEM ;
 struct etr_perf_buffer* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IS_ERR (struct etr_buf*) ;
 int NUMA_NO_NODE ;
 int cpu_to_node (int) ;
 struct etr_buf* get_perf_etr_buf (struct tmc_drvdata*,struct perf_event*,int,void**,int) ;
 int kfree (struct etr_perf_buffer*) ;
 struct etr_perf_buffer* kzalloc_node (int,int ,int) ;

__attribute__((used)) static struct etr_perf_buffer *
tmc_etr_setup_perf_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
         int nr_pages, void **pages, bool snapshot)
{
 int node;
 struct etr_buf *etr_buf;
 struct etr_perf_buffer *etr_perf;

 node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);

 etr_perf = kzalloc_node(sizeof(*etr_perf), GFP_KERNEL, node);
 if (!etr_perf)
  return ERR_PTR(-ENOMEM);

 etr_buf = get_perf_etr_buf(drvdata, event, nr_pages, pages, snapshot);
 if (!IS_ERR(etr_buf))
  goto done;

 kfree(etr_perf);
 return ERR_PTR(-ENOMEM);

done:




 etr_perf->drvdata = drvdata;
 etr_perf->etr_buf = etr_buf;

 return etr_perf;
}
