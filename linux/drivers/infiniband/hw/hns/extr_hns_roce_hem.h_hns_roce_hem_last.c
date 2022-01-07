
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_hem_iter {int chunk; } ;



__attribute__((used)) static inline int hns_roce_hem_last(struct hns_roce_hem_iter *iter)
{
 return !iter->chunk;
}
