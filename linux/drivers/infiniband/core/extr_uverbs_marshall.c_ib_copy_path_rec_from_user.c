
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ib_gid {int dummy; } ib_gid ;
typedef int u32 ;
struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int raw; } ;
struct sa_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; TYPE_2__ sgid; TYPE_1__ dgid; int rec_type; } ;
struct ib_user_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; int raw_traffic; scalar_t__ sgid; scalar_t__ dgid; int dlid; int slid; } ;


 int SA_PATH_REC_TYPE_IB ;
 int SA_PATH_REC_TYPE_OPA ;
 scalar_t__ ib_is_opa_gid (union ib_gid*) ;
 int memcpy (int ,scalar_t__,int) ;
 int memset (struct sa_path_rec*,int ,int) ;
 int ntohs (int ) ;
 int opa_get_lid_from_gid (union ib_gid*) ;
 int sa_path_set_dlid (struct sa_path_rec*,int ) ;
 int sa_path_set_dmac_zero (struct sa_path_rec*) ;
 int sa_path_set_raw_traffic (struct sa_path_rec*,int ) ;
 int sa_path_set_slid (struct sa_path_rec*,int ) ;

void ib_copy_path_rec_from_user(struct sa_path_rec *dst,
    struct ib_user_path_rec *src)
{
 u32 slid, dlid;

 memset(dst, 0, sizeof(*dst));
 if ((ib_is_opa_gid((union ib_gid *)src->sgid)) ||
     (ib_is_opa_gid((union ib_gid *)src->dgid))) {
  dst->rec_type = SA_PATH_REC_TYPE_OPA;
  slid = opa_get_lid_from_gid((union ib_gid *)src->sgid);
  dlid = opa_get_lid_from_gid((union ib_gid *)src->dgid);
 } else {
  dst->rec_type = SA_PATH_REC_TYPE_IB;
  slid = ntohs(src->slid);
  dlid = ntohs(src->dlid);
 }
 memcpy(dst->dgid.raw, src->dgid, sizeof dst->dgid);
 memcpy(dst->sgid.raw, src->sgid, sizeof dst->sgid);

 sa_path_set_dlid(dst, dlid);
 sa_path_set_slid(dst, slid);
 sa_path_set_raw_traffic(dst, src->raw_traffic);
 dst->flow_label = src->flow_label;
 dst->hop_limit = src->hop_limit;
 dst->traffic_class = src->traffic_class;
 dst->reversible = src->reversible;
 dst->numb_path = src->numb_path;
 dst->pkey = src->pkey;
 dst->sl = src->sl;
 dst->mtu_selector = src->mtu_selector;
 dst->mtu = src->mtu;
 dst->rate_selector = src->rate_selector;
 dst->rate = src->rate;
 dst->packet_life_time = src->packet_life_time;
 dst->preference = src->preference;
 dst->packet_life_time_selector = src->packet_life_time_selector;


 sa_path_set_dmac_zero(dst);
}
