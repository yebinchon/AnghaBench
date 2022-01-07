
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int raw; } ;
struct TYPE_3__ {int raw; } ;
struct sa_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; TYPE_2__ sgid; TYPE_1__ dgid; } ;
struct ib_user_path_rec {int packet_life_time_selector; int preference; int packet_life_time; int rate; int rate_selector; int mtu; int mtu_selector; int sl; int pkey; int numb_path; int reversible; int traffic_class; int hop_limit; int flow_label; int raw_traffic; void* slid; void* dlid; int sgid; int dgid; } ;


 void* htons (int ) ;
 int memcpy (int ,int ,int) ;
 int ntohl (int ) ;
 int sa_path_get_dlid (struct sa_path_rec*) ;
 int sa_path_get_raw_traffic (struct sa_path_rec*) ;
 int sa_path_get_slid (struct sa_path_rec*) ;

__attribute__((used)) static void __ib_copy_path_rec_to_user(struct ib_user_path_rec *dst,
           struct sa_path_rec *src)
{
 memcpy(dst->dgid, src->dgid.raw, sizeof(src->dgid));
 memcpy(dst->sgid, src->sgid.raw, sizeof(src->sgid));

 dst->dlid = htons(ntohl(sa_path_get_dlid(src)));
 dst->slid = htons(ntohl(sa_path_get_slid(src)));
 dst->raw_traffic = sa_path_get_raw_traffic(src);
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
}
