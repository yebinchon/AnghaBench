
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_attr {int config; scalar_t__ exclude_user; scalar_t__ exclude_kernel; } ;
struct perf_event {struct perf_event_attr attr; } ;
struct etm_config {int ctrl; scalar_t__ mode; } ;
struct etm_drvdata {int etmccer; struct etm_config config; } ;


 int EINVAL ;
 int ETM3X_SUPPORTED_OPTIONS ;
 int ETMCCER_RETSTACK ;
 int ETMCR_RETURN_STACK ;
 scalar_t__ ETM_MODE_EXCL_KERN ;
 scalar_t__ ETM_MODE_EXCL_USER ;
 int etm_config_trace_mode (struct etm_config*) ;
 int etm_set_default (struct etm_config*) ;
 int memset (struct etm_config*,int ,int) ;

__attribute__((used)) static int etm_parse_event_config(struct etm_drvdata *drvdata,
      struct perf_event *event)
{
 struct etm_config *config = &drvdata->config;
 struct perf_event_attr *attr = &event->attr;

 if (!attr)
  return -EINVAL;


 memset(config, 0, sizeof(struct etm_config));

 if (attr->exclude_kernel)
  config->mode = ETM_MODE_EXCL_KERN;

 if (attr->exclude_user)
  config->mode = ETM_MODE_EXCL_USER;


 etm_set_default(config);





 if (config->mode)
  etm_config_trace_mode(config);





 if (attr->config & ~ETM3X_SUPPORTED_OPTIONS)
  return -EINVAL;

 config->ctrl = attr->config;







 if ((config->ctrl & ETMCR_RETURN_STACK) &&
     !(drvdata->etmccer & ETMCCER_RETSTACK))
  config->ctrl &= ~ETMCR_RETURN_STACK;

 return 0;
}
