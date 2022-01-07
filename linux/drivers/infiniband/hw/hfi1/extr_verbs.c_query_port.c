
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct rvt_dev_info {int dummy; } ;
struct ib_port_attr {int active_width; int active_speed; void* max_mtu; void* active_mtu; int max_vl_num; int gid_tbl_len; int phys_state; int state; int lmc; scalar_t__ lid; } ;
struct hfi1_pportdata {int ibmtu; int vls_supported; int link_speed_active; int link_width_active; int lmc; scalar_t__ lid; } ;
struct hfi1_ibdev {int dummy; } ;
struct hfi1_devdata {struct hfi1_pportdata* pport; } ;


 int HFI1_GUIDS_PER_PORT ;
 int IB_MTU_4096 ;
 struct hfi1_devdata* dd_from_dev (struct hfi1_ibdev*) ;
 struct hfi1_ibdev* dev_from_rdi (struct rvt_dev_info*) ;
 int driver_lstate (struct hfi1_pportdata*) ;
 int driver_pstate (struct hfi1_pportdata*) ;
 int hfi1_max_mtu ;
 void* mtu_to_enum (int,int ) ;
 scalar_t__ opa_speed_to_ib (int ) ;
 scalar_t__ opa_width_to_ib (int ) ;
 int valid_ib_mtu (int) ;

__attribute__((used)) static int query_port(struct rvt_dev_info *rdi, u8 port_num,
        struct ib_port_attr *props)
{
 struct hfi1_ibdev *verbs_dev = dev_from_rdi(rdi);
 struct hfi1_devdata *dd = dd_from_dev(verbs_dev);
 struct hfi1_pportdata *ppd = &dd->pport[port_num - 1];
 u32 lid = ppd->lid;


 props->lid = lid ? lid : 0;
 props->lmc = ppd->lmc;

 props->state = driver_lstate(ppd);
 props->phys_state = driver_pstate(ppd);
 props->gid_tbl_len = HFI1_GUIDS_PER_PORT;
 props->active_width = (u8)opa_width_to_ib(ppd->link_width_active);

 props->active_speed = (u8)opa_speed_to_ib(ppd->link_speed_active);
 props->max_vl_num = ppd->vls_supported;
 props->max_mtu = mtu_to_enum((!valid_ib_mtu(hfi1_max_mtu) ?
          4096 : hfi1_max_mtu), IB_MTU_4096);
 props->active_mtu = !valid_ib_mtu(ppd->ibmtu) ? props->max_mtu :
  mtu_to_enum(ppd->ibmtu, IB_MTU_4096);

 return 0;
}
