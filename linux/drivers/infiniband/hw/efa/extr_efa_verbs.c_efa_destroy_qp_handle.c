
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct efa_dev {int edev; } ;
struct efa_com_destroy_qp_params {int qp_handle; } ;


 int efa_com_destroy_qp (int *,struct efa_com_destroy_qp_params*) ;

__attribute__((used)) static int efa_destroy_qp_handle(struct efa_dev *dev, u32 qp_handle)
{
 struct efa_com_destroy_qp_params params = { .qp_handle = qp_handle };

 return efa_com_destroy_qp(&dev->edev, &params);
}
