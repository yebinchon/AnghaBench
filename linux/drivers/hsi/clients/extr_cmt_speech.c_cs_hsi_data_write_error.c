
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int dummy; } ;
struct cs_hsi_iface {int data_state; } ;


 int __cs_hsi_error_post (struct cs_hsi_iface*) ;
 int __cs_hsi_error_pre (struct cs_hsi_iface*,struct hsi_msg*,char*,int *) ;
 int __cs_hsi_error_write_bits (int *) ;

__attribute__((used)) static void cs_hsi_data_write_error(struct cs_hsi_iface *hi,
       struct hsi_msg *msg)
{
 __cs_hsi_error_pre(hi, msg, "data write", &hi->data_state);
 __cs_hsi_error_write_bits(&hi->data_state);
 __cs_hsi_error_post(hi);
}
