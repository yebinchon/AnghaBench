
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct mcast_group {int timeout_work; TYPE_4__* demux; int last_req_tid; } ;
struct TYPE_6__ {int interface_id; } ;
struct TYPE_7__ {TYPE_1__ global; } ;
struct ib_sa_mcmember_data {TYPE_2__ port_gid; } ;
struct TYPE_8__ {int tid; } ;
struct ib_sa_mad {TYPE_3__ mad_hdr; int data; } ;
struct ib_mad {int dummy; } ;
struct TYPE_9__ {int mcg_wq; int * guid_cache; } ;


 int MAD_TIMEOUT_MS ;
 int memcpy (struct ib_sa_mad*,struct ib_sa_mad*,int) ;
 int mlx4_ib_get_new_demux_tid (TYPE_4__*) ;
 int msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int send_mad_to_wire (TYPE_4__*,struct ib_mad*) ;

__attribute__((used)) static int send_join_to_wire(struct mcast_group *group, struct ib_sa_mad *sa_mad)
{
 struct ib_sa_mad mad;
 struct ib_sa_mcmember_data *sa_mad_data = (struct ib_sa_mcmember_data *)&mad.data;
 int ret;


 memcpy(&mad, sa_mad, sizeof mad);


 sa_mad_data->port_gid.global.interface_id = group->demux->guid_cache[0];


 mad.mad_hdr.tid = mlx4_ib_get_new_demux_tid(group->demux);
 group->last_req_tid = mad.mad_hdr.tid;

 ret = send_mad_to_wire(group->demux, (struct ib_mad *)&mad);

 if (!ret) {

  queue_delayed_work(group->demux->mcg_wq, &group->timeout_work,
    msecs_to_jiffies(MAD_TIMEOUT_MS));
 }

 return ret;
}
