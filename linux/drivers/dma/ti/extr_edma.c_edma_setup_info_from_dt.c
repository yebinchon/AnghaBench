
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edma_soc_info {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 struct edma_soc_info* ERR_PTR (int ) ;

__attribute__((used)) static struct edma_soc_info *edma_setup_info_from_dt(struct device *dev,
           bool legacy_mode)
{
 return ERR_PTR(-EINVAL);
}
