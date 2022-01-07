
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sgl; } ;
struct hsi_msg {TYPE_2__ sgt; } ;
struct TYPE_3__ {unsigned int length; } ;



__attribute__((used)) static inline void hsc_msg_len_set(struct hsi_msg *msg, unsigned int len)
{
 msg->sgt.sgl->length = len;
}
