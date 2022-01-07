
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hfi1_devdata {int dummy; } ;


 scalar_t__ RCV_RSM_CFG ;
 scalar_t__ RCV_RSM_MATCH ;
 scalar_t__ RCV_RSM_SELECT ;
 int write_csr (struct hfi1_devdata*,scalar_t__,int ) ;

__attribute__((used)) static void clear_rsm_rule(struct hfi1_devdata *dd, u8 rule_index)
{
 write_csr(dd, RCV_RSM_CFG + (8 * rule_index), 0);
 write_csr(dd, RCV_RSM_SELECT + (8 * rule_index), 0);
 write_csr(dd, RCV_RSM_MATCH + (8 * rule_index), 0);
}
