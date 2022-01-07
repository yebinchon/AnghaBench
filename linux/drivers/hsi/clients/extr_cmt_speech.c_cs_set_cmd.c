
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int sgl; } ;
struct hsi_msg {TYPE_1__ sgt; } ;


 int * sg_virt (int ) ;

__attribute__((used)) static inline void cs_set_cmd(struct hsi_msg *msg, u32 cmd)
{
 u32 *data = sg_virt(msg->sgt.sgl);
 *data = cmd;
}
