
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocrdma_dev {int dummy; } ;


 int ocrdma_destroy_eqs (struct ocrdma_dev*) ;
 int ocrdma_destroy_mq (struct ocrdma_dev*) ;
 int ocrdma_free_pd_pool (struct ocrdma_dev*) ;
 int ocrdma_mbx_delete_ah_tbl (struct ocrdma_dev*) ;

void ocrdma_cleanup_hw(struct ocrdma_dev *dev)
{
 ocrdma_free_pd_pool(dev);
 ocrdma_mbx_delete_ah_tbl(dev);


 ocrdma_destroy_mq(dev);


 ocrdma_destroy_eqs(dev);
}
