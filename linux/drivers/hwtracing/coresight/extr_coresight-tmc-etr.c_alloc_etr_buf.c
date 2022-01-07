
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int size; } ;
struct perf_event {int cpu; } ;
struct etr_buf {int dummy; } ;


 int ENOMEM ;
 struct etr_buf* ERR_PTR (int ) ;
 int IS_ERR (struct etr_buf*) ;
 int NUMA_NO_NODE ;
 int PAGE_SHIFT ;
 unsigned long TMC_ETR_PERF_MIN_BUF_SIZE ;
 int cpu_to_node (int) ;
 struct etr_buf* tmc_alloc_etr_buf (struct tmc_drvdata*,unsigned long,int ,int,int *) ;

__attribute__((used)) static struct etr_buf *
alloc_etr_buf(struct tmc_drvdata *drvdata, struct perf_event *event,
       int nr_pages, void **pages, bool snapshot)
{
 int node;
 struct etr_buf *etr_buf;
 unsigned long size;

 node = (event->cpu == -1) ? NUMA_NO_NODE : cpu_to_node(event->cpu);




 if ((nr_pages << PAGE_SHIFT) > drvdata->size) {
  etr_buf = tmc_alloc_etr_buf(drvdata, (nr_pages << PAGE_SHIFT),
         0, node, ((void*)0));
  if (!IS_ERR(etr_buf))
   goto done;
 }





 size = drvdata->size;
 do {
  etr_buf = tmc_alloc_etr_buf(drvdata, size, 0, node, ((void*)0));
  if (!IS_ERR(etr_buf))
   goto done;
  size /= 2;
 } while (size >= TMC_ETR_PERF_MIN_BUF_SIZE);

 return ERR_PTR(-ENOMEM);

done:
 return etr_buf;
}
