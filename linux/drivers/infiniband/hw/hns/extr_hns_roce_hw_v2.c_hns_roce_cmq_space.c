
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_v2_cmq_ring {int next_to_use; int next_to_clean; int desc_num; } ;



__attribute__((used)) static int hns_roce_cmq_space(struct hns_roce_v2_cmq_ring *ring)
{
 int ntu = ring->next_to_use;
 int ntc = ring->next_to_clean;
 int used = (ntu - ntc + ring->desc_num) % ring->desc_num;

 return ring->desc_num - used - 1;
}
