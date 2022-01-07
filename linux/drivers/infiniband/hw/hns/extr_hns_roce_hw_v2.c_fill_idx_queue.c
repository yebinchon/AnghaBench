
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_idx_que {int entry_sz; int idx_buf; } ;


 scalar_t__ hns_roce_buf_offset (int *,int) ;

__attribute__((used)) static void fill_idx_queue(struct hns_roce_idx_que *idx_que,
      int cur_idx, int wqe_idx)
{
 unsigned int *addr;

 addr = (unsigned int *)hns_roce_buf_offset(&idx_que->idx_buf,
         cur_idx * idx_que->entry_sz);
 *addr = wqe_idx;
}
