
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hisi_zip_ctx {TYPE_1__* qp_ctx; } ;
struct hisi_qm {int dummy; } ;
struct hisi_zip {struct hisi_qm qm; } ;
struct TYPE_3__ {struct hisi_zip* zip_dev; } ;


 int ENODEV ;
 int HZIP_CTX_Q_NUM ;
 int cpu_to_node (int ) ;
 struct hisi_zip* find_zip_device (int ) ;
 int hisi_zip_create_qp (struct hisi_qm*,TYPE_1__*,int,int ) ;
 int hisi_zip_release_qp (TYPE_1__*) ;
 int pr_err (char*) ;
 int smp_processor_id () ;

__attribute__((used)) static int hisi_zip_ctx_init(struct hisi_zip_ctx *hisi_zip_ctx, u8 req_type)
{
 struct hisi_zip *hisi_zip;
 struct hisi_qm *qm;
 int ret, i, j;


 hisi_zip = find_zip_device(cpu_to_node(smp_processor_id()));
 if (!hisi_zip) {
  pr_err("Failed to find a proper ZIP device!\n");
  return -ENODEV;
 }
 qm = &hisi_zip->qm;

 for (i = 0; i < HZIP_CTX_Q_NUM; i++) {

  ret = hisi_zip_create_qp(qm, &hisi_zip_ctx->qp_ctx[i], i,
      req_type);
  if (ret)
   goto err;

  hisi_zip_ctx->qp_ctx[i].zip_dev = hisi_zip;
 }

 return 0;
err:
 for (j = i - 1; j >= 0; j--)
  hisi_zip_release_qp(&hisi_zip_ctx->qp_ctx[j]);

 return ret;
}
