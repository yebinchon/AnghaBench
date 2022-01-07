
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sgl; } ;
struct hsi_msg {TYPE_1__ sgt; } ;


 int hsi_free_msg (struct hsi_msg*) ;
 int kfree (int ) ;
 int sg_virt (int ) ;

__attribute__((used)) static inline void hsc_msg_free(struct hsi_msg *msg)
{
 kfree(sg_virt(msg->sgt.sgl));
 hsi_free_msg(msg);
}
