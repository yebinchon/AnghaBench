
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sgl; } ;
struct hsi_msg {TYPE_2__ sgt; } ;
struct TYPE_3__ {unsigned int length; } ;



__attribute__((used)) static inline unsigned int hsc_msg_len_get(struct hsi_msg *msg)
{
 return msg->sgt.sgl->length;
}
