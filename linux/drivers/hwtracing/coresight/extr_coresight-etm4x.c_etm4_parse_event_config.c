
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int config; scalar_t__ exclude_user; scalar_t__ exclude_kernel; } ;
struct perf_event {struct perf_event_attr attr; } ;
struct etmv4_config {int cfg; int ccctlr; int mode; } ;
struct etmv4_drvdata {scalar_t__ retstack; struct etmv4_config config; } ;


 int BIT (int) ;
 int EINVAL ;
 int ETM4_CFG_BIT_CTXTID ;
 int ETM_CYC_THRESHOLD_DEFAULT ;
 int ETM_MODE_EXCL_KERN ;
 int ETM_MODE_EXCL_USER ;
 int ETM_OPT_CTXTID ;
 int ETM_OPT_CYCACC ;
 int ETM_OPT_RETSTK ;
 int ETM_OPT_TS ;
 int etm4_config_timestamp_event (struct etmv4_drvdata*) ;
 int etm4_set_default_config (struct etmv4_config*) ;
 int etm4_set_event_filters (struct etmv4_drvdata*,struct perf_event*) ;
 int memset (struct etmv4_config*,int ,int) ;

__attribute__((used)) static int etm4_parse_event_config(struct etmv4_drvdata *drvdata,
       struct perf_event *event)
{
 int ret = 0;
 struct etmv4_config *config = &drvdata->config;
 struct perf_event_attr *attr = &event->attr;

 if (!attr) {
  ret = -EINVAL;
  goto out;
 }


 memset(config, 0, sizeof(struct etmv4_config));

 if (attr->exclude_kernel)
  config->mode = ETM_MODE_EXCL_KERN;

 if (attr->exclude_user)
  config->mode = ETM_MODE_EXCL_USER;


 etm4_set_default_config(config);


 ret = etm4_set_event_filters(drvdata, event);
 if (ret)
  goto out;


 if (attr->config & BIT(ETM_OPT_CYCACC)) {
  config->cfg |= BIT(4);

  config->ccctlr = ETM_CYC_THRESHOLD_DEFAULT;
 }
 if (attr->config & BIT(ETM_OPT_TS)) {





  ret = etm4_config_timestamp_event(drvdata);





  if (ret)
   goto out;


  config->cfg |= BIT(11);
 }

 if (attr->config & BIT(ETM_OPT_CTXTID))

  config->cfg |= BIT(ETM4_CFG_BIT_CTXTID);


 if ((attr->config & BIT(ETM_OPT_RETSTK)) && drvdata->retstack)

  config->cfg |= BIT(12);

out:
 return ret;
}
