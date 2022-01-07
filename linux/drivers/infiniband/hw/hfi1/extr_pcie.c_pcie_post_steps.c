
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfi1_devdata {size_t hfi1_id; } ;


 int NUM_PCIE_SERDES ;
 int WRITE_SBUS_RECEIVER ;
 int clear_sbus_fast_mode (struct hfi1_devdata*) ;
 int ** pcie_pcs_addrs ;
 int sbus_request (struct hfi1_devdata*,int ,int,int ,int) ;
 int set_sbus_fast_mode (struct hfi1_devdata*) ;

__attribute__((used)) static void pcie_post_steps(struct hfi1_devdata *dd)
{
 int i;

 set_sbus_fast_mode(dd);







 for (i = 0; i < NUM_PCIE_SERDES; i++) {
  sbus_request(dd, pcie_pcs_addrs[dd->hfi1_id][i],
        0x03, WRITE_SBUS_RECEIVER, 0x00022132);
 }

 clear_sbus_fast_mode(dd);
}
