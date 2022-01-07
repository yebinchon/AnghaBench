
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rc_qacks; void* z_rc_qacks; int rc_acks; void* z_rc_acks; } ;
struct TYPE_4__ {TYPE_1__ rvp; } ;
struct hfi1_pportdata {TYPE_2__ ibport_data; } ;
struct hfi1_devdata {int num_pports; int send_schedule; void* z_send_schedule; int rcv_limit; void* z_rcv_limit; int int_counter; void* z_int_counter; } ;


 void* get_all_cpu_total (int ) ;

__attribute__((used)) static inline void hfi1_reset_cpu_counters(struct hfi1_devdata *dd)
{
 struct hfi1_pportdata *ppd;
 int i;

 dd->z_int_counter = get_all_cpu_total(dd->int_counter);
 dd->z_rcv_limit = get_all_cpu_total(dd->rcv_limit);
 dd->z_send_schedule = get_all_cpu_total(dd->send_schedule);

 ppd = (struct hfi1_pportdata *)(dd + 1);
 for (i = 0; i < dd->num_pports; i++, ppd++) {
  ppd->ibport_data.rvp.z_rc_acks =
   get_all_cpu_total(ppd->ibport_data.rvp.rc_acks);
  ppd->ibport_data.rvp.z_rc_qacks =
   get_all_cpu_total(ppd->ibport_data.rvp.rc_qacks);
 }
}
