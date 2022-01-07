
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int cl; } ;
struct hsc_client_data {int flags; } ;


 int HSC_RXBREAK ;
 int clear_bit (int ,int *) ;
 struct hsc_client_data* hsi_client_drvdata (int ) ;
 int hsi_free_msg (struct hsi_msg*) ;

__attribute__((used)) static void hsc_break_req_destructor(struct hsi_msg *msg)
{
 struct hsc_client_data *cl_data = hsi_client_drvdata(msg->cl);

 hsi_free_msg(msg);
 clear_bit(HSC_RXBREAK, &cl_data->flags);
}
