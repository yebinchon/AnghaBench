
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; int attr_mod; } ;
struct opa_aggregate {int data; int attr_id; int attr_mod; int err_reqlength; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;


 int IB_SMP_DIRECTION ;
 int IB_SMP_INVALID_FIELD ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 int * opa_get_smp_data (struct opa_smp*) ;
 int reply (struct ib_mad_hdr*) ;
 int set_aggr_error (struct opa_aggregate*) ;
 int subn_set_opa_sma (int ,struct opa_smp*,int,int ,struct ib_device*,int ,int *,int,int) ;

__attribute__((used)) static int subn_set_opa_aggregate(struct opa_smp *smp,
      struct ib_device *ibdev, u8 port,
      u32 *resp_len, int local_mad)
{
 int i;
 u32 num_attr = be32_to_cpu(smp->attr_mod) & 0x000000ff;
 u8 *next_smp = opa_get_smp_data(smp);

 if (num_attr < 1 || num_attr > 117) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }

 for (i = 0; i < num_attr; i++) {
  struct opa_aggregate *agg;
  size_t agg_data_len;
  size_t agg_size;
  u32 am;

  agg = (struct opa_aggregate *)next_smp;
  agg_data_len = (be16_to_cpu(agg->err_reqlength) & 0x007f) * 8;
  agg_size = sizeof(*agg) + agg_data_len;
  am = be32_to_cpu(agg->attr_mod);

  *resp_len += agg_size;

  if (next_smp + agg_size > ((u8 *)smp) + sizeof(*smp)) {
   smp->status |= IB_SMP_INVALID_FIELD;
   return reply((struct ib_mad_hdr *)smp);
  }

  (void)subn_set_opa_sma(agg->attr_id, smp, am, agg->data,
           ibdev, port, ((void*)0), (u32)agg_data_len,
           local_mad);

  if (smp->status & IB_SMP_INVALID_FIELD)
   break;
  if (smp->status & ~IB_SMP_DIRECTION) {
   set_aggr_error(agg);
   return reply((struct ib_mad_hdr *)smp);
  }
  next_smp += agg_size;
 }

 return reply((struct ib_mad_hdr *)smp);
}
