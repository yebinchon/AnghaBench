
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mthca_dev {int driver_pd; } ;
struct mthca_cq_buf {int mr; int is_direct; int queue; } ;


 int MTHCA_CQ_ENTRY_SIZE ;
 int MTHCA_MAX_DIRECT_CQ_SIZE ;
 int get_cqe_from_buf (struct mthca_cq_buf*,int) ;
 int mthca_buf_alloc (struct mthca_dev*,int,int ,int *,int *,int *,int,int *) ;
 int set_cqe_hw (int ) ;

int mthca_alloc_cq_buf(struct mthca_dev *dev, struct mthca_cq_buf *buf, int nent)
{
 int ret;
 int i;

 ret = mthca_buf_alloc(dev, nent * MTHCA_CQ_ENTRY_SIZE,
         MTHCA_MAX_DIRECT_CQ_SIZE,
         &buf->queue, &buf->is_direct,
         &dev->driver_pd, 1, &buf->mr);
 if (ret)
  return ret;

 for (i = 0; i < nent; ++i)
  set_cqe_hw(get_cqe_from_buf(buf, i));

 return 0;
}
