
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;
struct rsm_rule_data {unsigned int offset; int pkt_type; unsigned int index1_width; unsigned int index2_width; int value2; int mask2; int value1; int mask1; int index2_off; int index1_off; int field2_off; int field1_off; } ;
struct rsm_map_table {scalar_t__ used; unsigned int* map; } ;
struct hfi1_devdata {unsigned int qos_shift; unsigned int n_krcv_queues; } ;


 unsigned int FIRST_KERNEL_KCTXT ;
 unsigned int HFI1_CTRL_CTXT ;
 int LRH_BTH_MASK ;
 int LRH_BTH_MATCH_OFFSET ;
 int LRH_BTH_VALUE ;
 int LRH_SC_MASK ;
 int LRH_SC_MATCH_OFFSET ;
 int LRH_SC_SELECT_OFFSET ;
 int LRH_SC_VALUE ;
 scalar_t__ NUM_MAP_ENTRIES ;
 int QPN_SELECT_OFFSET ;
 unsigned int RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK ;
 int RSM_INS_VERBS ;
 int add_rsm_rule (struct hfi1_devdata*,int ,struct rsm_rule_data*) ;
 int init_qpmap_table (struct hfi1_devdata*,unsigned int,unsigned int) ;
 unsigned int* krcvqs ;
 unsigned int num_vls ;
 unsigned int qos_rmt_entries (struct hfi1_devdata*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void init_qos(struct hfi1_devdata *dd, struct rsm_map_table *rmt)
{
 struct rsm_rule_data rrd;
 unsigned qpns_per_vl, ctxt, i, qpn, n = 1, m;
 unsigned int rmt_entries;
 u64 reg;

 if (!rmt)
  goto bail;
 rmt_entries = qos_rmt_entries(dd, &m, &n);
 if (rmt_entries == 0)
  goto bail;
 qpns_per_vl = 1 << m;


 rmt_entries = 1 << (m + n);
 if (rmt->used + rmt_entries >= NUM_MAP_ENTRIES)
  goto bail;


 for (i = 0, ctxt = FIRST_KERNEL_KCTXT; i < num_vls; i++) {
  unsigned tctxt;

  for (qpn = 0, tctxt = ctxt;
       krcvqs[i] && qpn < qpns_per_vl; qpn++) {
   unsigned idx, regoff, regidx;


   idx = rmt->used + ((qpn << n) ^ i);
   regoff = (idx % 8) * 8;
   regidx = idx / 8;

   reg = rmt->map[regidx];
   reg &= ~(RCV_RSM_MAP_TABLE_RCV_CONTEXT_A_MASK
    << regoff);
   reg |= (u64)(tctxt++) << regoff;
   rmt->map[regidx] = reg;
   if (tctxt == ctxt + krcvqs[i])
    tctxt = ctxt;
  }
  ctxt += krcvqs[i];
 }

 rrd.offset = rmt->used;
 rrd.pkt_type = 2;
 rrd.field1_off = LRH_BTH_MATCH_OFFSET;
 rrd.field2_off = LRH_SC_MATCH_OFFSET;
 rrd.index1_off = LRH_SC_SELECT_OFFSET;
 rrd.index1_width = n;
 rrd.index2_off = QPN_SELECT_OFFSET;
 rrd.index2_width = m + n;
 rrd.mask1 = LRH_BTH_MASK;
 rrd.value1 = LRH_BTH_VALUE;
 rrd.mask2 = LRH_SC_MASK;
 rrd.value2 = LRH_SC_VALUE;


 add_rsm_rule(dd, RSM_INS_VERBS, &rrd);


 rmt->used += rmt_entries;

 init_qpmap_table(dd, HFI1_CTRL_CTXT, HFI1_CTRL_CTXT);
 dd->qos_shift = n + 1;
 return;
bail:
 dd->qos_shift = 1;
 init_qpmap_table(dd, FIRST_KERNEL_KCTXT, dd->n_krcv_queues - 1);
}
