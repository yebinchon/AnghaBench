
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef long long u64 ;
typedef int u32 ;
struct send_context {int dummy; } ;
struct hfi1_pportdata {scalar_t__ port; } ;
struct hfi1_devdata {TYPE_2__* vld; TYPE_3__** kernel_send_context; int node; TYPE_1__** rcd; int num_send_contexts; struct hfi1_pportdata* pport; } ;
struct TYPE_10__ {int hw_context; int sw_index; } ;
struct TYPE_9__ {TYPE_3__* sc; int mtu; } ;
struct TYPE_8__ {int rcvhdrqentsize; } ;


 int CHECK_VL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_SC_PER_VL ;
 int OPA_MTU_2048 ;
 int SC (int ) ;
 int SC_KERNEL ;
 int SC_VL15 ;
 int dd_dev_info (struct hfi1_devdata*,char*,int ,int ) ;
 int enum_to_mtu (int ) ;
 int hfi1_init_ctxt (TYPE_3__*) ;
 int hfi1_max_mtu ;
 TYPE_3__** kcalloc_node (int ,int,int ,int ) ;
 int kfree (TYPE_3__**) ;
 int num_vls ;
 scalar_t__ pio_map_init (struct hfi1_devdata*,scalar_t__,int,int *) ;
 void* sc_alloc (struct hfi1_devdata*,int ,int ,int ) ;
 int sc_enable (TYPE_3__*) ;
 int sc_free (TYPE_3__*) ;
 int write_kctxt_csr (struct hfi1_devdata*,int ,int ,long long) ;

int init_pervl_scs(struct hfi1_devdata *dd)
{
 int i;
 u64 mask, all_vl_mask = (u64)0x80ff;
 u64 data_vls_mask = (u64)0x00ff;
 u32 ctxt;
 struct hfi1_pportdata *ppd = dd->pport;

 dd->vld[15].sc = sc_alloc(dd, SC_VL15,
      dd->rcd[0]->rcvhdrqentsize, dd->node);
 if (!dd->vld[15].sc)
  return -ENOMEM;

 hfi1_init_ctxt(dd->vld[15].sc);
 dd->vld[15].mtu = enum_to_mtu(OPA_MTU_2048);

 dd->kernel_send_context = kcalloc_node(dd->num_send_contexts,
            sizeof(struct send_context *),
            GFP_KERNEL, dd->node);
 if (!dd->kernel_send_context)
  goto freesc15;

 dd->kernel_send_context[0] = dd->vld[15].sc;

 for (i = 0; i < num_vls; i++) {







  dd->vld[i].sc = sc_alloc(dd, SC_KERNEL,
      dd->rcd[0]->rcvhdrqentsize, dd->node);
  if (!dd->vld[i].sc)
   goto nomem;
  dd->kernel_send_context[i + 1] = dd->vld[i].sc;
  hfi1_init_ctxt(dd->vld[i].sc);

  dd->vld[i].mtu = hfi1_max_mtu;
 }
 for (i = num_vls; i < INIT_SC_PER_VL * num_vls; i++) {
  dd->kernel_send_context[i + 1] =
  sc_alloc(dd, SC_KERNEL, dd->rcd[0]->rcvhdrqentsize, dd->node);
  if (!dd->kernel_send_context[i + 1])
   goto nomem;
  hfi1_init_ctxt(dd->kernel_send_context[i + 1]);
 }

 sc_enable(dd->vld[15].sc);
 ctxt = dd->vld[15].sc->hw_context;
 mask = all_vl_mask & ~(1LL << 15);
 write_kctxt_csr(dd, ctxt, SC(CHECK_VL), mask);
 dd_dev_info(dd,
      "Using send context %u(%u) for VL15\n",
      dd->vld[15].sc->sw_index, ctxt);

 for (i = 0; i < num_vls; i++) {
  sc_enable(dd->vld[i].sc);
  ctxt = dd->vld[i].sc->hw_context;
  mask = all_vl_mask & ~(data_vls_mask);
  write_kctxt_csr(dd, ctxt, SC(CHECK_VL), mask);
 }
 for (i = num_vls; i < INIT_SC_PER_VL * num_vls; i++) {
  sc_enable(dd->kernel_send_context[i + 1]);
  ctxt = dd->kernel_send_context[i + 1]->hw_context;
  mask = all_vl_mask & ~(data_vls_mask);
  write_kctxt_csr(dd, ctxt, SC(CHECK_VL), mask);
 }

 if (pio_map_init(dd, ppd->port - 1, num_vls, ((void*)0)))
  goto nomem;
 return 0;

nomem:
 for (i = 0; i < num_vls; i++) {
  sc_free(dd->vld[i].sc);
  dd->vld[i].sc = ((void*)0);
 }

 for (i = num_vls; i < INIT_SC_PER_VL * num_vls; i++)
  sc_free(dd->kernel_send_context[i + 1]);

 kfree(dd->kernel_send_context);
 dd->kernel_send_context = ((void*)0);

freesc15:
 sc_free(dd->vld[15].sc);
 return -ENOMEM;
}
