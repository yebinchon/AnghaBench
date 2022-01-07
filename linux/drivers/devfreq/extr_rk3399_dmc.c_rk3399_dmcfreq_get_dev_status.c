
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3399_dmcfreq {int rate; int edev; } ;
struct device {int dummy; } ;
struct devfreq_event_data {int total_count; int load_count; } ;
struct devfreq_dev_status {int total_time; int busy_time; int current_frequency; } ;


 struct rk3399_dmcfreq* dev_get_drvdata (struct device*) ;
 int devfreq_event_get_event (int ,struct devfreq_event_data*) ;

__attribute__((used)) static int rk3399_dmcfreq_get_dev_status(struct device *dev,
      struct devfreq_dev_status *stat)
{
 struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(dev);
 struct devfreq_event_data edata;
 int ret = 0;

 ret = devfreq_event_get_event(dmcfreq->edev, &edata);
 if (ret < 0)
  return ret;

 stat->current_frequency = dmcfreq->rate;
 stat->busy_time = edata.load_count;
 stat->total_time = edata.total_count;

 return ret;
}
