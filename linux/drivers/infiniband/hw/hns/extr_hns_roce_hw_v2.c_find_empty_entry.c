
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_idx_que {int bitmap; } ;


 int ENOSPC ;
 int bitmap_full (int ,unsigned long) ;
 int bitmap_set (int ,int,int) ;
 int find_first_zero_bit (int ,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int find_empty_entry(struct hns_roce_idx_que *idx_que,
       unsigned long size)
{
 int wqe_idx;

 if (unlikely(bitmap_full(idx_que->bitmap, size)))
  return -ENOSPC;

 wqe_idx = find_first_zero_bit(idx_que->bitmap, size);

 bitmap_set(idx_que->bitmap, wqe_idx, 1);

 return wqe_idx;
}
