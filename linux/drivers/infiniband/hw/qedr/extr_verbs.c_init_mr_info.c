
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedr_pbl {int pa; int list_entry; } ;
struct qedr_dev {int dummy; } ;
struct mr_info {int free_pbl_list; int pbl_info; struct qedr_pbl* pbl_table; int inuse_pbl_list; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,...) ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct qedr_pbl*) ;
 int PTR_ERR (struct qedr_pbl*) ;
 int QEDR_MSG_MR ;
 int free_mr_info (struct qedr_dev*,struct mr_info*) ;
 int list_add_tail (int *,int *) ;
 void* qedr_alloc_pbl_tbl (struct qedr_dev*,int *,int ) ;
 int qedr_prepare_pbl_tbl (struct qedr_dev*,int *,size_t,int) ;

__attribute__((used)) static int init_mr_info(struct qedr_dev *dev, struct mr_info *info,
   size_t page_list_len, bool two_layered)
{
 struct qedr_pbl *tmp;
 int rc;

 INIT_LIST_HEAD(&info->free_pbl_list);
 INIT_LIST_HEAD(&info->inuse_pbl_list);

 rc = qedr_prepare_pbl_tbl(dev, &info->pbl_info,
      page_list_len, two_layered);
 if (rc)
  goto done;

 info->pbl_table = qedr_alloc_pbl_tbl(dev, &info->pbl_info, GFP_KERNEL);
 if (IS_ERR(info->pbl_table)) {
  rc = PTR_ERR(info->pbl_table);
  goto done;
 }

 DP_DEBUG(dev, QEDR_MSG_MR, "pbl_table_pa = %pa\n",
   &info->pbl_table->pa);




 tmp = qedr_alloc_pbl_tbl(dev, &info->pbl_info, GFP_KERNEL);
 if (IS_ERR(tmp)) {
  DP_DEBUG(dev, QEDR_MSG_MR, "Extra PBL is not allocated\n");
  goto done;
 }

 list_add_tail(&tmp->list_entry, &info->free_pbl_list);

 DP_DEBUG(dev, QEDR_MSG_MR, "extra pbl_table_pa = %pa\n", &tmp->pa);

done:
 if (rc)
  free_mr_info(dev, info);

 return rc;
}
