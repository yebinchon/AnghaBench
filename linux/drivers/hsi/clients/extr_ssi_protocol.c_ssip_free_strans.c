
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int context; } ;


 int ssip_free_data (int ) ;
 int ssip_release_cmd (struct hsi_msg*) ;

__attribute__((used)) static void ssip_free_strans(struct hsi_msg *msg)
{
 ssip_free_data(msg->context);
 ssip_release_cmd(msg);
}
