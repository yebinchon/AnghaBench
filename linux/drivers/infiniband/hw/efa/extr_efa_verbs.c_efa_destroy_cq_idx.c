
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efa_dev {int edev; } ;
struct efa_com_destroy_cq_params {int cq_idx; } ;


 int efa_com_destroy_cq (int *,struct efa_com_destroy_cq_params*) ;

__attribute__((used)) static int efa_destroy_cq_idx(struct efa_dev *dev, int cq_idx)
{
 struct efa_com_destroy_cq_params params = { .cq_idx = cq_idx };

 return efa_com_destroy_cq(&dev->edev, &params);
}
