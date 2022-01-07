
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * parent; } ;
struct ib_device {unsigned int phys_port_cnt; int num_comp_vectors; int node_desc; TYPE_1__ dev; scalar_t__ node_guid; } ;
struct hfi1_ibport {int rvp; } ;
struct hfi1_pportdata {int pkeys; struct hfi1_ibport ibport_data; } ;
struct TYPE_12__ {int qpn_inc; int qpn_res_start; int qpn_res_end; int core_cap_flags; unsigned int nports; int reserved_operations; int extra_rdma_atomic; int wss_clean_period; int wss_threshold; int sge_copy_mode; int npkeys; int lkey_table_size; int node; int max_mad_size; int psn_modify_mask; int psn_shift; int psn_mask; int max_rdma_atomic; int qos_shift; scalar_t__ qpn_start; int qp_table_size; } ;
struct TYPE_11__ {int comp_vect_cpu_lookup; int setup_wqe; int notify_restart_rc; int modify_qp; int check_modify_qp; int mtu_to_path_mtu; int mtu_from_qp; void* notify_error_qp; int quiesce_qp; int stop_send_queue; int flush_qp_waiters; int get_pmtu_from_attr; int schedule_send_no_lock; int schedule_send; int do_send; int notify_qp_reset; int free_all_qps; int qp_priv_free; int qp_priv_init; int qp_priv_alloc; int cap_mask_chg; int shut_down_port; int query_port_state; int get_guid_be; int notify_new_ah; int check_ah; int get_pci_dev; } ;
struct TYPE_13__ {struct ib_device ibdev; int wc_opcode; int post_parms; TYPE_4__ dparms; scalar_t__ flags; TYPE_3__ driver_f; } ;
struct hfi1_ibdev {TYPE_5__ rdi; int memwait; int txwait; int txwait_lock; int iowait_lock; int mem_timer; } ;
struct hfi1_devdata {unsigned int num_pports; struct hfi1_ibdev verbs_dev; struct hfi1_pportdata* pport; int node; int comp_vect_possible_cpus; int qos_shift; TYPE_2__* pcidev; } ;
struct TYPE_14__ {int nodename; } ;
struct TYPE_10__ {int dev; } ;


 int HFI1_MAX_RDMA_ATOMIC ;
 int HFI1_PORT_GUID_INDEX ;
 int HFI1_TID_RDMA_WRITE_CNT ;
 int INIT_LIST_HEAD (int *) ;
 int OPA_MGMT_MAD_SIZE ;
 int PSN_MASK ;
 int PSN_MODIFY_MASK ;
 int PSN_SHIFT ;
 int RDMA_CORE_CAP_OPA_AH ;
 int RDMA_CORE_PORT_INTEL_OPA ;
 int _hfi1_schedule_send ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int flush_qp_waiters ;
 int free_all_qps ;
 int get_pci_dev ;
 int get_pmtu_from_attr ;
 scalar_t__ get_sguid (struct hfi1_ibport*,int ) ;
 int hfi1_cap_mask_chg ;
 int hfi1_check_ah ;
 int hfi1_check_modify_qp ;
 int hfi1_comp_vect_mappings_lookup ;
 int hfi1_dev_ops ;
 int hfi1_do_send_from_rvt ;
 int hfi1_fill_device_attr (struct hfi1_devdata*) ;
 int hfi1_get_guid_be ;
 int hfi1_get_npkeys (struct hfi1_devdata*) ;
 int hfi1_lkey_table_size ;
 int hfi1_modify_qp ;
 int hfi1_notify_new_ah ;
 int hfi1_post_parms ;
 int hfi1_qp_priv_init ;
 int hfi1_qp_table_size ;
 int hfi1_restart_rc ;
 int hfi1_schedule_send ;
 int hfi1_setup_wqe ;
 int hfi1_verbs_register_sysfs (struct hfi1_devdata*) ;
 int ib_hfi1_attr_group ;
 scalar_t__ ib_hfi1_sys_image_guid ;
 int ib_hfi1_wc_opcode ;
 int ib_set_device_ops (struct ib_device*,int *) ;
 int init_ibport (struct hfi1_pportdata*) ;
 TYPE_8__* init_utsname () ;
 int kdeth_qp ;
 int mem_timer ;
 int mtu_from_qp ;
 int mtu_to_path_mtu ;
 void* notify_error_qp ;
 int notify_qp_reset ;
 int qp_priv_alloc ;
 int qp_priv_free ;
 int query_port ;
 int quiesce_qp ;
 int rdma_set_device_sysfs_group (struct ib_device*,int *) ;
 int rvt_init_port (TYPE_5__*,int *,unsigned int,int ) ;
 int rvt_register_device (TYPE_5__*) ;
 int rvt_unregister_device (TYPE_5__*) ;
 int seqlock_init (int *) ;
 int sge_copy_mode ;
 int shut_down_port ;
 int stop_send_queue ;
 int strlcpy (int ,int ,int) ;
 int timer_setup (int *,int ,int ) ;
 int verbs_txreq_exit (struct hfi1_ibdev*) ;
 int verbs_txreq_init (struct hfi1_ibdev*) ;
 int wss_clean_period ;
 int wss_threshold ;

int hfi1_register_ib_device(struct hfi1_devdata *dd)
{
 struct hfi1_ibdev *dev = &dd->verbs_dev;
 struct ib_device *ibdev = &dev->rdi.ibdev;
 struct hfi1_pportdata *ppd = dd->pport;
 struct hfi1_ibport *ibp = &ppd->ibport_data;
 unsigned i;
 int ret;

 for (i = 0; i < dd->num_pports; i++)
  init_ibport(ppd + i);



 timer_setup(&dev->mem_timer, mem_timer, 0);

 seqlock_init(&dev->iowait_lock);
 seqlock_init(&dev->txwait_lock);
 INIT_LIST_HEAD(&dev->txwait);
 INIT_LIST_HEAD(&dev->memwait);

 ret = verbs_txreq_init(dev);
 if (ret)
  goto err_verbs_txreq;


 ibdev->node_guid = get_sguid(ibp, HFI1_PORT_GUID_INDEX);






 if (!ib_hfi1_sys_image_guid)
  ib_hfi1_sys_image_guid = ibdev->node_guid;
 ibdev->phys_port_cnt = dd->num_pports;
 ibdev->dev.parent = &dd->pcidev->dev;

 ib_set_device_ops(ibdev, &hfi1_dev_ops);

 strlcpy(ibdev->node_desc, init_utsname()->nodename,
  sizeof(ibdev->node_desc));




 dd->verbs_dev.rdi.driver_f.get_pci_dev = get_pci_dev;
 dd->verbs_dev.rdi.driver_f.check_ah = hfi1_check_ah;
 dd->verbs_dev.rdi.driver_f.notify_new_ah = hfi1_notify_new_ah;
 dd->verbs_dev.rdi.driver_f.get_guid_be = hfi1_get_guid_be;
 dd->verbs_dev.rdi.driver_f.query_port_state = query_port;
 dd->verbs_dev.rdi.driver_f.shut_down_port = shut_down_port;
 dd->verbs_dev.rdi.driver_f.cap_mask_chg = hfi1_cap_mask_chg;



 hfi1_fill_device_attr(dd);


 dd->verbs_dev.rdi.dparms.qp_table_size = hfi1_qp_table_size;
 dd->verbs_dev.rdi.dparms.qpn_start = 0;
 dd->verbs_dev.rdi.dparms.qpn_inc = 1;
 dd->verbs_dev.rdi.dparms.qos_shift = dd->qos_shift;
 dd->verbs_dev.rdi.dparms.qpn_res_start = kdeth_qp << 16;
 dd->verbs_dev.rdi.dparms.qpn_res_end =
 dd->verbs_dev.rdi.dparms.qpn_res_start + 65535;
 dd->verbs_dev.rdi.dparms.max_rdma_atomic = HFI1_MAX_RDMA_ATOMIC;
 dd->verbs_dev.rdi.dparms.psn_mask = PSN_MASK;
 dd->verbs_dev.rdi.dparms.psn_shift = PSN_SHIFT;
 dd->verbs_dev.rdi.dparms.psn_modify_mask = PSN_MODIFY_MASK;
 dd->verbs_dev.rdi.dparms.core_cap_flags = RDMA_CORE_PORT_INTEL_OPA |
      RDMA_CORE_CAP_OPA_AH;
 dd->verbs_dev.rdi.dparms.max_mad_size = OPA_MGMT_MAD_SIZE;

 dd->verbs_dev.rdi.driver_f.qp_priv_alloc = qp_priv_alloc;
 dd->verbs_dev.rdi.driver_f.qp_priv_init = hfi1_qp_priv_init;
 dd->verbs_dev.rdi.driver_f.qp_priv_free = qp_priv_free;
 dd->verbs_dev.rdi.driver_f.free_all_qps = free_all_qps;
 dd->verbs_dev.rdi.driver_f.notify_qp_reset = notify_qp_reset;
 dd->verbs_dev.rdi.driver_f.do_send = hfi1_do_send_from_rvt;
 dd->verbs_dev.rdi.driver_f.schedule_send = hfi1_schedule_send;
 dd->verbs_dev.rdi.driver_f.schedule_send_no_lock = _hfi1_schedule_send;
 dd->verbs_dev.rdi.driver_f.get_pmtu_from_attr = get_pmtu_from_attr;
 dd->verbs_dev.rdi.driver_f.notify_error_qp = notify_error_qp;
 dd->verbs_dev.rdi.driver_f.flush_qp_waiters = flush_qp_waiters;
 dd->verbs_dev.rdi.driver_f.stop_send_queue = stop_send_queue;
 dd->verbs_dev.rdi.driver_f.quiesce_qp = quiesce_qp;
 dd->verbs_dev.rdi.driver_f.notify_error_qp = notify_error_qp;
 dd->verbs_dev.rdi.driver_f.mtu_from_qp = mtu_from_qp;
 dd->verbs_dev.rdi.driver_f.mtu_to_path_mtu = mtu_to_path_mtu;
 dd->verbs_dev.rdi.driver_f.check_modify_qp = hfi1_check_modify_qp;
 dd->verbs_dev.rdi.driver_f.modify_qp = hfi1_modify_qp;
 dd->verbs_dev.rdi.driver_f.notify_restart_rc = hfi1_restart_rc;
 dd->verbs_dev.rdi.driver_f.setup_wqe = hfi1_setup_wqe;
 dd->verbs_dev.rdi.driver_f.comp_vect_cpu_lookup =
      hfi1_comp_vect_mappings_lookup;


 dd->verbs_dev.rdi.ibdev.num_comp_vectors = dd->comp_vect_possible_cpus;
 dd->verbs_dev.rdi.dparms.node = dd->node;


 dd->verbs_dev.rdi.flags = 0;
 dd->verbs_dev.rdi.dparms.lkey_table_size = hfi1_lkey_table_size;
 dd->verbs_dev.rdi.dparms.nports = dd->num_pports;
 dd->verbs_dev.rdi.dparms.npkeys = hfi1_get_npkeys(dd);
 dd->verbs_dev.rdi.dparms.sge_copy_mode = sge_copy_mode;
 dd->verbs_dev.rdi.dparms.wss_threshold = wss_threshold;
 dd->verbs_dev.rdi.dparms.wss_clean_period = wss_clean_period;
 dd->verbs_dev.rdi.dparms.reserved_operations = 1;
 dd->verbs_dev.rdi.dparms.extra_rdma_atomic = HFI1_TID_RDMA_WRITE_CNT;


 dd->verbs_dev.rdi.post_parms = hfi1_post_parms;


 dd->verbs_dev.rdi.wc_opcode = ib_hfi1_wc_opcode;

 ppd = dd->pport;
 for (i = 0; i < dd->num_pports; i++, ppd++)
  rvt_init_port(&dd->verbs_dev.rdi,
         &ppd->ibport_data.rvp,
         i,
         ppd->pkeys);

 rdma_set_device_sysfs_group(&dd->verbs_dev.rdi.ibdev,
        &ib_hfi1_attr_group);

 ret = rvt_register_device(&dd->verbs_dev.rdi);
 if (ret)
  goto err_verbs_txreq;

 ret = hfi1_verbs_register_sysfs(dd);
 if (ret)
  goto err_class;

 return ret;

err_class:
 rvt_unregister_device(&dd->verbs_dev.rdi);
err_verbs_txreq:
 verbs_txreq_exit(dev);
 dd_dev_err(dd, "cannot register verbs: %d!\n", -ret);
 return ret;
}
