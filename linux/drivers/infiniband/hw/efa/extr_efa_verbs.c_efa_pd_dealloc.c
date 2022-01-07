
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct efa_dev {int edev; } ;
struct efa_com_dealloc_pd_params {int pdn; } ;


 int efa_com_dealloc_pd (int *,struct efa_com_dealloc_pd_params*) ;

__attribute__((used)) static int efa_pd_dealloc(struct efa_dev *dev, u16 pdn)
{
 struct efa_com_dealloc_pd_params params = {
  .pdn = pdn,
 };

 return efa_com_dealloc_pd(&dev->edev, &params);
}
