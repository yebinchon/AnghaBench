
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk3399_dmcfreq {unsigned long rate; } ;
struct device {int dummy; } ;


 struct rk3399_dmcfreq* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int rk3399_dmcfreq_get_cur_freq(struct device *dev, unsigned long *freq)
{
 struct rk3399_dmcfreq *dmcfreq = dev_get_drvdata(dev);

 *freq = dmcfreq->rate;

 return 0;
}
