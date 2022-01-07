
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_mr {int umem; } ;
struct efa_dev {int ibdev; } ;
struct TYPE_2__ {int inline_pbl_array; } ;
struct efa_com_reg_mr_params {int inline_pbl; int page_num; int page_shift; TYPE_1__ pbl; } ;


 int ibdev_dbg (int *,char*,int ) ;
 int umem_to_page_list (struct efa_dev*,int ,int ,int ,int ) ;

__attribute__((used)) static int efa_create_inline_pbl(struct efa_dev *dev, struct efa_mr *mr,
     struct efa_com_reg_mr_params *params)
{
 int err;

 params->inline_pbl = 1;
 err = umem_to_page_list(dev, mr->umem, params->pbl.inline_pbl_array,
    params->page_num, params->page_shift);
 if (err)
  return err;

 ibdev_dbg(&dev->ibdev,
    "inline_pbl_array - pages[%u]\n", params->page_num);

 return 0;
}
