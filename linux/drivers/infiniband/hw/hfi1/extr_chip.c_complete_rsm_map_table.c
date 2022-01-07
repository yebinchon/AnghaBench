
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsm_map_table {int * map; } ;
struct hfi1_devdata {int dummy; } ;


 int NUM_MAP_REGS ;
 int RCV_CTRL_RCV_RSM_ENABLE_SMASK ;
 scalar_t__ RCV_RSM_MAP_TABLE ;
 int add_rcvctrl (struct hfi1_devdata*,int ) ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

__attribute__((used)) static void complete_rsm_map_table(struct hfi1_devdata *dd,
       struct rsm_map_table *rmt)
{
 int i;

 if (rmt) {

  for (i = 0; i < NUM_MAP_REGS; i++)
   write_csr(dd, RCV_RSM_MAP_TABLE + (8 * i), rmt->map[i]);


  add_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK);
 }
}
