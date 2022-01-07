
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int sgt; } ;


 int kfree (struct hsi_msg*) ;
 int sg_free_table (int *) ;

void hsi_free_msg(struct hsi_msg *msg)
{
 if (!msg)
  return;
 sg_free_table(&msg->sgt);
 kfree(msg);
}
