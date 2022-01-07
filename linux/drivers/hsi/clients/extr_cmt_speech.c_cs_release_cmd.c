
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int link; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int cmdqueue; } ;


 int list_add_tail (int *,int *) ;

__attribute__((used)) static void cs_release_cmd(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;

 list_add_tail(&msg->link, &hi->cmdqueue);
}
