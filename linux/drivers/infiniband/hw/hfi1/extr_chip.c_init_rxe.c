
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long long u64 ;
struct rsm_map_table {int used; } ;
struct TYPE_2__ {int rmt_start; } ;
struct hfi1_devdata {TYPE_1__ vnic; } ;


 int ENOMEM ;
 int RCV_BYPASS ;
 unsigned long long RCV_BYPASS_HDR_SIZE_MASK ;
 unsigned long long RCV_BYPASS_HDR_SIZE_SHIFT ;
 unsigned long long RCV_BYPASS_HDR_SIZE_SMASK ;
 int RCV_ERR_MASK ;
 struct rsm_map_table* alloc_rsm_map_table (struct hfi1_devdata*) ;
 int complete_rsm_map_table (struct hfi1_devdata*,struct rsm_map_table*) ;
 int init_fecn_handling (struct hfi1_devdata*,struct rsm_map_table*) ;
 int init_qos (struct hfi1_devdata*,struct rsm_map_table*) ;
 int kfree (struct rsm_map_table*) ;
 unsigned long long read_csr (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,int ,unsigned long long) ;

__attribute__((used)) static int init_rxe(struct hfi1_devdata *dd)
{
 struct rsm_map_table *rmt;
 u64 val;


 write_csr(dd, RCV_ERR_MASK, ~0ull);

 rmt = alloc_rsm_map_table(dd);
 if (!rmt)
  return -ENOMEM;


 init_qos(dd, rmt);
 init_fecn_handling(dd, rmt);
 complete_rsm_map_table(dd, rmt);

 dd->vnic.rmt_start = rmt->used;
 kfree(rmt);
 val = read_csr(dd, RCV_BYPASS);
 val &= ~RCV_BYPASS_HDR_SIZE_SMASK;
 val |= ((4ull & RCV_BYPASS_HDR_SIZE_MASK) <<
  RCV_BYPASS_HDR_SIZE_SHIFT);
 write_csr(dd, RCV_BYPASS, val);
 return 0;
}
