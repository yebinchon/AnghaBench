
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int status; } ;


 int HSI_STATUS_ERROR ;
 int hsc_msg_len_set (struct hsi_msg*,int ) ;
 int hsc_tx_completed (struct hsi_msg*) ;

__attribute__((used)) static void hsc_tx_msg_destructor(struct hsi_msg *msg)
{
 msg->status = HSI_STATUS_ERROR;
 hsc_msg_len_set(msg, 0);
 hsc_tx_completed(msg);
}
