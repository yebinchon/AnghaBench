
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scpi_dvfs_info {int dummy; } ;
struct device {int dummy; } ;


 struct scpi_dvfs_info* ERR_PTR (int) ;
 int scpi_dev_domain_id (struct device*) ;
 struct scpi_dvfs_info* scpi_dvfs_get_info (int) ;

__attribute__((used)) static struct scpi_dvfs_info *scpi_dvfs_info(struct device *dev)
{
 int domain = scpi_dev_domain_id(dev);

 if (domain < 0)
  return ERR_PTR(domain);

 return scpi_dvfs_get_info(domain);
}
