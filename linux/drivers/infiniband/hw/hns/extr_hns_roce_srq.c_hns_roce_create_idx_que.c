
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ib_pd {int device; } ;
struct hns_roce_idx_que {int bitmap; int idx_buf; int buf_size; } ;
struct hns_roce_srq {struct hns_roce_idx_que idx_que; int max; } ;
struct hns_roce_dev {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int bitmap_free (int ) ;
 int bitmap_zalloc (int ,int ) ;
 scalar_t__ hns_roce_buf_alloc (struct hns_roce_dev*,int ,int,int *,int) ;
 struct hns_roce_dev* to_hr_dev (int ) ;

__attribute__((used)) static int hns_roce_create_idx_que(struct ib_pd *pd, struct hns_roce_srq *srq,
       u32 page_shift)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(pd->device);
 struct hns_roce_idx_que *idx_que = &srq->idx_que;

 idx_que->bitmap = bitmap_zalloc(srq->max, GFP_KERNEL);
 if (!idx_que->bitmap)
  return -ENOMEM;

 idx_que->buf_size = srq->idx_que.buf_size;

 if (hns_roce_buf_alloc(hr_dev, idx_que->buf_size, (1 << page_shift) * 2,
          &idx_que->idx_buf, page_shift)) {
  bitmap_free(idx_que->bitmap);
  return -ENOMEM;
 }

 return 0;
}
