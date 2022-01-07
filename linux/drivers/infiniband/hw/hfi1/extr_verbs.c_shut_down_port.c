
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rvt_dev_info {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int HLS_DN_DOWNDEF ;
 int OPA_LINKDOWN_REASON_UNKNOWN ;
 struct hfi1_devdata* dd_from_dev (struct hfi1_ibdev*) ;
 struct hfi1_ibdev* dev_from_rdi (struct rvt_dev_info*) ;
 int set_link_down_reason (struct hfi1_pportdata*,int ,int ,int ) ;
 int set_link_state (struct hfi1_pportdata*,int ) ;

__attribute__((used)) static int shut_down_port(struct rvt_dev_info *rdi, u8 port_num)
{
 struct hfi1_ibdev *verbs_dev = dev_from_rdi(rdi);
 struct hfi1_devdata *dd = dd_from_dev(verbs_dev);
 struct hfi1_pportdata *ppd = &dd->pport[port_num - 1];
 int ret;

 set_link_down_reason(ppd, OPA_LINKDOWN_REASON_UNKNOWN, 0,
        OPA_LINKDOWN_REASON_UNKNOWN);
 ret = set_link_state(ppd, HLS_DN_DOWNDEF);
 return ret;
}
