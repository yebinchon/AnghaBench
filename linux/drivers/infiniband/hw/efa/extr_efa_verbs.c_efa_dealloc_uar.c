
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efa_dev {int edev; } ;
struct efa_com_dealloc_uar_params {int uarn; } ;


 int efa_com_dealloc_uar (int *,struct efa_com_dealloc_uar_params*) ;

__attribute__((used)) static int efa_dealloc_uar(struct efa_dev *dev, u16 uarn)
{
 struct efa_com_dealloc_uar_params params = {
  .uarn = uarn,
 };

 return efa_com_dealloc_uar(&dev->edev, &params);
}
