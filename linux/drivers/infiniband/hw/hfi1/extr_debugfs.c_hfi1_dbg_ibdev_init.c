
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct hfi1_pportdata {int unit; int num_pports; struct hfi1_pportdata* pport; int hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct hfi1_ibdev {int unit; int num_pports; struct hfi1_ibdev* pport; int hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct hfi1_devdata {int unit; int num_pports; struct hfi1_devdata* pport; int hfi1_ibdev_link; struct dentry* hfi1_ibdev_dbg; } ;
struct dentry {int dummy; } ;
typedef int name ;
typedef int link ;
struct TYPE_14__ {int write; } ;
struct TYPE_13__ {char* name; TYPE_2__ ops; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int S_IRUGO ;
 int S_IWUSR ;
 TYPE_2__ _ctx_stats_file_ops ;
 TYPE_2__ _opcode_stats_file_ops ;
 TYPE_2__ _pios_file_ops ;
 TYPE_2__ _qp_stats_file_ops ;
 TYPE_2__ _rcds_file_ops ;
 TYPE_2__ _sdes_file_ops ;
 TYPE_2__ _sdma_cpu_list_file_ops ;
 TYPE_2__ _tx_opcode_stats_file_ops ;
 char* class_name () ;
 TYPE_1__* cntr_ops ;
 struct hfi1_pportdata* dd_from_dev (struct hfi1_pportdata*) ;
 struct dentry* debugfs_create_dir (char*,int ) ;
 int debugfs_create_file (char*,int,struct dentry*,struct hfi1_pportdata*,TYPE_2__*) ;
 int debugfs_create_symlink (char*,int ,char*) ;
 int hfi1_dbg_root ;
 int hfi1_fault_init_debugfs (struct hfi1_pportdata*) ;
 TYPE_1__* port_cntr_ops ;
 int snprintf (char*,int,char*,...) ;

void hfi1_dbg_ibdev_init(struct hfi1_ibdev *ibd)
{
 char name[sizeof("port0counters") + 1];
 char link[10];
 struct hfi1_devdata *dd = dd_from_dev(ibd);
 struct hfi1_pportdata *ppd;
 struct dentry *root;
 int unit = dd->unit;
 int i, j;

 if (!hfi1_dbg_root)
  return;
 snprintf(name, sizeof(name), "%s_%d", class_name(), unit);
 snprintf(link, sizeof(link), "%d", unit);
 root = debugfs_create_dir(name, hfi1_dbg_root);
 ibd->hfi1_ibdev_dbg = root;

 ibd->hfi1_ibdev_link =
  debugfs_create_symlink(link, hfi1_dbg_root, name);

 debugfs_create_file("opcode_stats", 0444, root, ibd,
       &_opcode_stats_file_ops);
 debugfs_create_file("tx_opcode_stats", 0444, root, ibd,
       &_tx_opcode_stats_file_ops);
 debugfs_create_file("ctx_stats", 0444, root, ibd, &_ctx_stats_file_ops);
 debugfs_create_file("qp_stats", 0444, root, ibd, &_qp_stats_file_ops);
 debugfs_create_file("sdes", 0444, root, ibd, &_sdes_file_ops);
 debugfs_create_file("rcds", 0444, root, ibd, &_rcds_file_ops);
 debugfs_create_file("pios", 0444, root, ibd, &_pios_file_ops);
 debugfs_create_file("sdma_cpu_list", 0444, root, ibd,
       &_sdma_cpu_list_file_ops);


 for (i = 0; i < ARRAY_SIZE(cntr_ops); i++)
  debugfs_create_file(cntr_ops[i].name, 0444, root, dd,
        &cntr_ops[i].ops);


 for (ppd = dd->pport, j = 0; j < dd->num_pports; j++, ppd++)
  for (i = 0; i < ARRAY_SIZE(port_cntr_ops); i++) {
   snprintf(name,
     sizeof(name),
     port_cntr_ops[i].name,
     j + 1);
   debugfs_create_file(name,
         !port_cntr_ops[i].ops.write ?
          S_IRUGO :
          S_IRUGO | S_IWUSR,
         root, ppd, &port_cntr_ops[i].ops);
  }

 hfi1_fault_init_debugfs(ibd);
}
