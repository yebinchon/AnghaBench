
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int cq_tbl; int qp_tbl; int stag_arr; } ;


 int kfree (int ) ;
 int ocrdma_release_stats_resources (struct ocrdma_dev*) ;

__attribute__((used)) static void ocrdma_free_resources(struct ocrdma_dev *dev)
{
 ocrdma_release_stats_resources(dev);
 kfree(dev->stag_arr);
 kfree(dev->qp_tbl);
 kfree(dev->cq_tbl);
}
