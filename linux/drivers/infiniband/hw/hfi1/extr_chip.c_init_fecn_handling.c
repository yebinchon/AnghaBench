
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u64 ;
typedef int u32 ;
struct rsm_rule_data {int field1_off; int field2_off; int index1_off; int index1_width; int mask1; int value1; int mask2; int value2; scalar_t__ index2_width; scalar_t__ index2_off; scalar_t__ pkt_type; scalar_t__ offset; } ;
struct rsm_map_table {int used; int* map; } ;
struct hfi1_devdata {int first_dyn_alloc_ctxt; int num_rcv_contexts; } ;


 scalar_t__ HFI1_CAP_IS_KSET (int ) ;
 int NUM_MAP_ENTRIES ;
 int RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK ;
 int RSM_INS_FECN ;
 int TID_RDMA ;
 int add_rsm_rule (struct hfi1_devdata*,int ,struct rsm_rule_data*) ;
 int dd_dev_err (struct hfi1_devdata*,char*) ;

__attribute__((used)) static void init_fecn_handling(struct hfi1_devdata *dd,
          struct rsm_map_table *rmt)
{
 struct rsm_rule_data rrd;
 u64 reg;
 int i, idx, regoff, regidx, start;
 u8 offset;
 u32 total_cnt;

 if (HFI1_CAP_IS_KSET(TID_RDMA))

  start = 1;
 else
  start = dd->first_dyn_alloc_ctxt;

 total_cnt = dd->num_rcv_contexts - start;


 if (rmt->used + total_cnt >= NUM_MAP_ENTRIES) {
  dd_dev_err(dd, "FECN handling disabled - too many contexts allocated\n");
  return;
 }
 offset = (u8)(NUM_MAP_ENTRIES + rmt->used - start);

 for (i = start, idx = rmt->used; i < dd->num_rcv_contexts;
      i++, idx++) {

  regoff = (idx % 8) * 8;
  regidx = idx / 8;
  reg = rmt->map[regidx];
  reg &= ~(RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK << regoff);
  reg |= (u64)i << regoff;
  rmt->map[regidx] = reg;
 }
 rrd.offset = offset;
 rrd.pkt_type = 0;
 rrd.field1_off = 95;
 rrd.field2_off = 133;
 rrd.index1_off = 64;
 rrd.index1_width = 8;
 rrd.index2_off = 0;
 rrd.index2_width = 0;
 rrd.mask1 = 1;
 rrd.value1 = 1;
 rrd.mask2 = 1;
 rrd.value2 = 1;


 add_rsm_rule(dd, RSM_INS_FECN, &rrd);

 rmt->used += total_cnt;
}
