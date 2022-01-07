
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_4__ {int cs_thres; int mode; int cscn_en; } ;
struct qm_mcc_initcgr {TYPE_1__ cgr; int we_mask; } ;
struct device {int dummy; } ;
typedef int opts ;
struct TYPE_5__ {int cgrid; int cb; } ;
struct TYPE_6__ {TYPE_2__ cgr; } ;


 int MAX_RSP_FQ_BACKLOG_PER_CPU ;
 int QMAN_CGR_FLAG_USE_INIT ;
 int QMAN_CGR_MODE_FRAME ;
 int QM_CGR_EN ;
 int QM_CGR_WE_CSCN_EN ;
 int QM_CGR_WE_CS_THRES ;
 int QM_CGR_WE_MODE ;
 int cgr_cb ;
 int cpu_to_be16 (int) ;
 scalar_t__ cpumask_weight (int ) ;
 int dev_dbg (struct device*,char*,int const) ;
 int dev_err (struct device*,char*,int,...) ;
 int memset (struct qm_mcc_initcgr*,int ,int) ;
 TYPE_3__ qipriv ;
 int qm_cgr_cs_thres_set64 (int *,int const,int) ;
 int qman_affine_cpus () ;
 int qman_alloc_cgrid (int *) ;
 int qman_create_cgr (TYPE_2__*,int ,struct qm_mcc_initcgr*) ;

__attribute__((used)) static int init_cgr(struct device *qidev)
{
 int ret;
 struct qm_mcc_initcgr opts;
 const u64 val = (u64)cpumask_weight(qman_affine_cpus()) *
   MAX_RSP_FQ_BACKLOG_PER_CPU;

 ret = qman_alloc_cgrid(&qipriv.cgr.cgrid);
 if (ret) {
  dev_err(qidev, "CGR alloc failed for rsp FQs: %d\n", ret);
  return ret;
 }

 qipriv.cgr.cb = cgr_cb;
 memset(&opts, 0, sizeof(opts));
 opts.we_mask = cpu_to_be16(QM_CGR_WE_CSCN_EN | QM_CGR_WE_CS_THRES |
       QM_CGR_WE_MODE);
 opts.cgr.cscn_en = QM_CGR_EN;
 opts.cgr.mode = QMAN_CGR_MODE_FRAME;
 qm_cgr_cs_thres_set64(&opts.cgr.cs_thres, val, 1);

 ret = qman_create_cgr(&qipriv.cgr, QMAN_CGR_FLAG_USE_INIT, &opts);
 if (ret) {
  dev_err(qidev, "Error %d creating CAAM CGRID: %u\n", ret,
   qipriv.cgr.cgrid);
  return ret;
 }

 dev_dbg(qidev, "Congestion threshold set to %llu\n", val);
 return 0;
}
