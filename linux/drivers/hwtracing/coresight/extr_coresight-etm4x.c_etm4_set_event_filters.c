
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {struct etm_filters* addr_filters; } ;
struct perf_event {TYPE_1__ hw; } ;
struct etmv4_config {int vissctlr; int viiectlr; int vinst_ctrl; } ;
struct etmv4_drvdata {struct etmv4_config config; } ;
struct etm_filters {int nr_filters; int ssstatus; struct etm_filter* etm_filter; } ;
struct etm_filter {int type; int stop_addr; int start_addr; } ;
typedef enum etm_addr_type { ____Placeholder_etm_addr_type } etm_addr_type ;


 int BIT (int) ;
 int EINVAL ;



 int etm4_get_next_comparator (struct etmv4_drvdata*,int) ;
 int etm4_set_comparator_filter (struct etmv4_config*,int ,int ,int) ;
 int etm4_set_default_filter (struct etmv4_config*) ;
 int etm4_set_start_stop_filter (struct etmv4_config*,int ,int,int) ;
 int perf_event_addr_filters_sync (struct perf_event*) ;

__attribute__((used)) static int etm4_set_event_filters(struct etmv4_drvdata *drvdata,
      struct perf_event *event)
{
 int i, comparator, ret = 0;
 u64 address;
 struct etmv4_config *config = &drvdata->config;
 struct etm_filters *filters = event->hw.addr_filters;

 if (!filters)
  goto default_filter;


 perf_event_addr_filters_sync(event);





 if (!filters->nr_filters)
  goto default_filter;

 for (i = 0; i < filters->nr_filters; i++) {
  struct etm_filter *filter = &filters->etm_filter[i];
  enum etm_addr_type type = filter->type;


  comparator = etm4_get_next_comparator(drvdata, type);
  if (comparator < 0) {
   ret = comparator;
   goto out;
  }

  switch (type) {
  case 130:
   etm4_set_comparator_filter(config,
         filter->start_addr,
         filter->stop_addr,
         comparator);




   config->vinst_ctrl |= BIT(9);


   config->vissctlr = 0x0;
   break;
  case 129:
  case 128:

   address = (type == 129 ?
       filter->start_addr :
       filter->stop_addr);


   etm4_set_start_stop_filter(config, address,
         comparator, type);
   if (filters->ssstatus)
    config->vinst_ctrl |= BIT(9);


   config->viiectlr = 0x0;
   break;
  default:
   ret = -EINVAL;
   goto out;
  }
 }

 goto out;


default_filter:
 etm4_set_default_filter(config);

out:
 return ret;
}
