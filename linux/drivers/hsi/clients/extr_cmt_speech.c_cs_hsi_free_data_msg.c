
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {scalar_t__ status; } ;


 scalar_t__ HSI_STATUS_COMPLETED ;
 scalar_t__ HSI_STATUS_ERROR ;
 int WARN_ON (int) ;
 int hsi_free_msg (struct hsi_msg*) ;

__attribute__((used)) static void cs_hsi_free_data_msg(struct hsi_msg *msg)
{
 WARN_ON(msg->status != HSI_STATUS_COMPLETED &&
     msg->status != HSI_STATUS_ERROR);
 hsi_free_msg(msg);
}
