
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmc_drvdata {int dummy; } ;
struct perf_event {int dummy; } ;
struct etr_buf {int dummy; } ;


 struct etr_buf* alloc_etr_buf (struct tmc_drvdata*,struct perf_event*,int,void**,int) ;

__attribute__((used)) static struct etr_buf *
get_perf_etr_buf_per_thread(struct tmc_drvdata *drvdata,
       struct perf_event *event, int nr_pages,
       void **pages, bool snapshot)
{




 return alloc_etr_buf(drvdata, event, nr_pages, pages, snapshot);
}
