
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {int wrid_low; int wrid_hi; } ;
struct TYPE_4__ {TYPE_1__ gen; } ;
struct t4_cqe {int bits_type_ts; TYPE_2__ u; int len; int header; } ;
struct sk_buff {int dummy; } ;


 int EMSGSIZE ;
 int be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ rdma_nl_put_driver_u32 (struct sk_buff*,char const*,int ) ;
 scalar_t__ rdma_nl_put_driver_u32_hex (struct sk_buff*,char*,int ) ;
 scalar_t__ rdma_nl_put_driver_u64_hex (struct sk_buff*,char*,int ) ;

__attribute__((used)) static int fill_cqe(struct sk_buff *msg, struct t4_cqe *cqe, u16 idx,
      const char *qstr)
{
 if (rdma_nl_put_driver_u32(msg, qstr, idx))
  goto err;
 if (rdma_nl_put_driver_u32_hex(msg, "header",
      be32_to_cpu(cqe->header)))
  goto err;
 if (rdma_nl_put_driver_u32(msg, "len", be32_to_cpu(cqe->len)))
  goto err;
 if (rdma_nl_put_driver_u32_hex(msg, "wrid_hi",
      be32_to_cpu(cqe->u.gen.wrid_hi)))
  goto err;
 if (rdma_nl_put_driver_u32_hex(msg, "wrid_low",
      be32_to_cpu(cqe->u.gen.wrid_low)))
  goto err;
 if (rdma_nl_put_driver_u64_hex(msg, "bits_type_ts",
      be64_to_cpu(cqe->bits_type_ts)))
  goto err;

 return 0;

err:
 return -EMSGSIZE;
}
