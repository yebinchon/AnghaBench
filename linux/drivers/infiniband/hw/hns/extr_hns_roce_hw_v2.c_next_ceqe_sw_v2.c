
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_eq {int cons_index; int entries; int hop_num; } ;
struct hns_roce_ceqe {int comp; } ;


 int HNS_ROCE_V2_CEQ_CEQE_OWNER_S ;
 struct hns_roce_ceqe* get_ceqe_v2 (struct hns_roce_eq*,int) ;
 struct hns_roce_ceqe* mhop_get_ceqe (struct hns_roce_eq*,int) ;
 int roce_get_bit (int ,int ) ;

__attribute__((used)) static struct hns_roce_ceqe *next_ceqe_sw_v2(struct hns_roce_eq *eq)
{
 struct hns_roce_ceqe *ceqe;

 if (!eq->hop_num)
  ceqe = get_ceqe_v2(eq, eq->cons_index);
 else
  ceqe = mhop_get_ceqe(eq, eq->cons_index);

 return (!!(roce_get_bit(ceqe->comp, HNS_ROCE_V2_CEQ_CEQE_OWNER_S))) ^
  (!!(eq->cons_index & eq->entries)) ? ceqe : ((void*)0);
}
