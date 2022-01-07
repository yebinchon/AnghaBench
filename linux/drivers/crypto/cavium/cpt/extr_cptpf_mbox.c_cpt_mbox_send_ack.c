
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpt_mbox {unsigned long long data; int msg; } ;
struct cpt_device {int dummy; } ;


 int CPT_MBOX_MSG_TYPE_ACK ;
 int cpt_send_msg_to_vf (struct cpt_device*,int,struct cpt_mbox*) ;

__attribute__((used)) static void cpt_mbox_send_ack(struct cpt_device *cpt, int vf,
         struct cpt_mbox *mbx)
{
 mbx->data = 0ull;
 mbx->msg = CPT_MBOX_MSG_TYPE_ACK;
 cpt_send_msg_to_vf(cpt, vf, mbx);
}
