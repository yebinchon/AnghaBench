
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dm_ulog_request {scalar_t__ data_size; int seq; } ;
struct TYPE_3__ {int val; int idx; } ;
struct cn_msg {scalar_t__ len; int seq; scalar_t__ ack; TYPE_1__ id; } ;
struct TYPE_4__ {int val; int idx; } ;


 int cn_netlink_send (struct cn_msg*,int ,int ,int ) ;
 int gfp_any () ;
 int memset (struct cn_msg*,int ,int) ;
 struct cn_msg* prealloced_cn_msg ;
 TYPE_2__ ulog_cn_id ;

__attribute__((used)) static int dm_ulog_sendto_server(struct dm_ulog_request *tfr)
{
 int r;
 struct cn_msg *msg = prealloced_cn_msg;

 memset(msg, 0, sizeof(struct cn_msg));

 msg->id.idx = ulog_cn_id.idx;
 msg->id.val = ulog_cn_id.val;
 msg->ack = 0;
 msg->seq = tfr->seq;
 msg->len = sizeof(struct dm_ulog_request) + tfr->data_size;

 r = cn_netlink_send(msg, 0, 0, gfp_any());

 return r;
}
