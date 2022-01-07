
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_pd {int device; } ;
struct ib_mr {int lkey; int rkey; } ;
struct hns_roce_mr {struct ib_mr ibmr; int * umem; int key; int type; } ;
struct TYPE_2__ {int pdn; } ;


 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MR_TYPE_DMA ;
 int hns_roce_mr_alloc (int ,int ,int ,unsigned long long,int,int ,struct hns_roce_mr*) ;
 int hns_roce_mr_enable (int ,struct hns_roce_mr*) ;
 int hns_roce_mr_free (int ,struct hns_roce_mr*) ;
 int kfree (struct hns_roce_mr*) ;
 struct hns_roce_mr* kmalloc (int,int ) ;
 int to_hr_dev (int ) ;
 TYPE_1__* to_hr_pd (struct ib_pd*) ;

struct ib_mr *hns_roce_get_dma_mr(struct ib_pd *pd, int acc)
{
 struct hns_roce_mr *mr;
 int ret;

 mr = kmalloc(sizeof(*mr), GFP_KERNEL);
 if (mr == ((void*)0))
  return ERR_PTR(-ENOMEM);

 mr->type = MR_TYPE_DMA;


 ret = hns_roce_mr_alloc(to_hr_dev(pd->device), to_hr_pd(pd)->pdn, 0,
    ~0ULL, acc, 0, mr);
 if (ret)
  goto err_free;

 ret = hns_roce_mr_enable(to_hr_dev(pd->device), mr);
 if (ret)
  goto err_mr;

 mr->ibmr.rkey = mr->ibmr.lkey = mr->key;
 mr->umem = ((void*)0);

 return &mr->ibmr;

err_mr:
 hns_roce_mr_free(to_hr_dev(pd->device), mr);

err_free:
 kfree(mr);
 return ERR_PTR(ret);
}
