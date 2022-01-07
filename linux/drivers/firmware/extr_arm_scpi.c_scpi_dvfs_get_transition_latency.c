
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_dvfs_info {int latency; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct scpi_dvfs_info*) ;
 int PTR_ERR (struct scpi_dvfs_info*) ;
 struct scpi_dvfs_info* scpi_dvfs_info (struct device*) ;

__attribute__((used)) static int scpi_dvfs_get_transition_latency(struct device *dev)
{
 struct scpi_dvfs_info *info = scpi_dvfs_info(dev);

 if (IS_ERR(info))
  return PTR_ERR(info);

 return info->latency;
}
