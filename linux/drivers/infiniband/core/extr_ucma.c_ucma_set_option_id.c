
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ucma_context {int cm_id; } ;


 int EINVAL ;
 int ENOSYS ;




 int rdma_set_ack_timeout (int ,int ) ;
 int rdma_set_afonly (int ,int) ;
 int rdma_set_reuseaddr (int ,int) ;
 int rdma_set_service_type (int ,int ) ;

__attribute__((used)) static int ucma_set_option_id(struct ucma_context *ctx, int optname,
         void *optval, size_t optlen)
{
 int ret = 0;

 switch (optname) {
 case 128:
  if (optlen != sizeof(u8)) {
   ret = -EINVAL;
   break;
  }
  rdma_set_service_type(ctx->cm_id, *((u8 *) optval));
  break;
 case 129:
  if (optlen != sizeof(int)) {
   ret = -EINVAL;
   break;
  }
  ret = rdma_set_reuseaddr(ctx->cm_id, *((int *) optval) ? 1 : 0);
  break;
 case 130:
  if (optlen != sizeof(int)) {
   ret = -EINVAL;
   break;
  }
  ret = rdma_set_afonly(ctx->cm_id, *((int *) optval) ? 1 : 0);
  break;
 case 131:
  if (optlen != sizeof(u8)) {
   ret = -EINVAL;
   break;
  }
  ret = rdma_set_ack_timeout(ctx->cm_id, *((u8 *)optval));
  break;
 default:
  ret = -ENOSYS;
 }

 return ret;
}
