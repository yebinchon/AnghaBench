
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 void* MLX5_ADDR_OF (void*,void const*,void*) ;
 int MLX5_GET (int ,void const*,int ) ;
 int MLX5_SET (void*,void*,int ,int) ;
 void* cq_context ;
 int cq_umem_valid ;
 void* create_cq_in ;
 void* create_mkey_in ;
 void* create_qp_in ;
 void* create_rmp_in ;
 void* create_rq_in ;
 void* create_sq_in ;
 void* create_xrc_srq_in ;
 void* create_xrq_in ;
 void* ctx ;
 int dbr_umem_valid ;
 int general_obj_in_cmd_hdr ;
 int mkey_umem_valid ;
 void* modify_cq_in ;
 int opcode ;
 int wq_umem_valid ;
 void* xrc_srq_context_entry ;
 int xrc_srq_umem_valid ;
 void* xrq_context ;

__attribute__((used)) static void devx_set_umem_valid(const void *in)
{
 u16 opcode = MLX5_GET(general_obj_in_cmd_hdr, in, opcode);

 switch (opcode) {
 case 135:
  MLX5_SET(create_mkey_in, in, mkey_umem_valid, 1);
  break;
 case 136:
 {
  void *cqc;

  MLX5_SET(create_cq_in, in, cq_umem_valid, 1);
  cqc = MLX5_ADDR_OF(create_cq_in, in, cq_context);
  MLX5_SET(cqc, cqc, dbr_umem_valid, 1);
  break;
 }
 case 134:
 {
  void *qpc;

  qpc = MLX5_ADDR_OF(create_qp_in, in, qpc);
  MLX5_SET(qpc, qpc, dbr_umem_valid, 1);
  MLX5_SET(create_qp_in, in, wq_umem_valid, 1);
  break;
 }

 case 132:
 {
  void *rqc, *wq;

  rqc = MLX5_ADDR_OF(create_rq_in, in, ctx);
  wq = MLX5_ADDR_OF(rqc, rqc, wq);
  MLX5_SET(wq, wq, dbr_umem_valid, 1);
  MLX5_SET(wq, wq, wq_umem_valid, 1);
  break;
 }

 case 131:
 {
  void *sqc, *wq;

  sqc = MLX5_ADDR_OF(create_sq_in, in, ctx);
  wq = MLX5_ADDR_OF(sqc, sqc, wq);
  MLX5_SET(wq, wq, dbr_umem_valid, 1);
  MLX5_SET(wq, wq, wq_umem_valid, 1);
  break;
 }

 case 128:
  MLX5_SET(modify_cq_in, in, cq_umem_valid, 1);
  break;

 case 133:
 {
  void *rmpc, *wq;

  rmpc = MLX5_ADDR_OF(create_rmp_in, in, ctx);
  wq = MLX5_ADDR_OF(rmpc, rmpc, wq);
  MLX5_SET(wq, wq, dbr_umem_valid, 1);
  MLX5_SET(wq, wq, wq_umem_valid, 1);
  break;
 }

 case 129:
 {
  void *xrqc, *wq;

  xrqc = MLX5_ADDR_OF(create_xrq_in, in, xrq_context);
  wq = MLX5_ADDR_OF(xrqc, xrqc, wq);
  MLX5_SET(wq, wq, dbr_umem_valid, 1);
  MLX5_SET(wq, wq, wq_umem_valid, 1);
  break;
 }

 case 130:
 {
  void *xrc_srqc;

  MLX5_SET(create_xrc_srq_in, in, xrc_srq_umem_valid, 1);
  xrc_srqc = MLX5_ADDR_OF(create_xrc_srq_in, in,
     xrc_srq_context_entry);
  MLX5_SET(xrc_srqc, xrc_srqc, dbr_umem_valid, 1);
  break;
 }

 default:
  return;
 }
}
