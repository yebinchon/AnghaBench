
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns_roce_eq {int cons_index; int log_entries; int doorbell; } ;


 int HNS_ROCE_V1_CONS_IDX_M ;
 int roce_raw_write (int,int ) ;

__attribute__((used)) static void set_eq_cons_index_v1(struct hns_roce_eq *eq, int req_not)
{
 roce_raw_write((eq->cons_index & HNS_ROCE_V1_CONS_IDX_M) |
        (req_not << eq->log_entries), eq->doorbell);
}
