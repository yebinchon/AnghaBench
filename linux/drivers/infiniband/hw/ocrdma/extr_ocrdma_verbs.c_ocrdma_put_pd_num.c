
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ocrdma_dev {int dev_lock; } ;


 int _ocrdma_pd_mgr_put_bitmap (struct ocrdma_dev*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ocrdma_put_pd_num(struct ocrdma_dev *dev, u16 pd_id,
       bool dpp_pool)
{
 int status;

 mutex_lock(&dev->dev_lock);
 status = _ocrdma_pd_mgr_put_bitmap(dev, pd_id, dpp_pool);
 mutex_unlock(&dev->dev_lock);
 return status;
}
