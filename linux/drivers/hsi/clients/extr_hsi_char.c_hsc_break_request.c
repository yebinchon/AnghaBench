
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hsi_msg {int break_frame; int (* destructor ) (struct hsi_msg*) ;int complete; } ;
struct hsi_client {int dummy; } ;
struct hsc_client_data {int flags; } ;


 int EBUSY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HSC_RXBREAK ;
 int clear_bit (int ,int *) ;
 int hsc_break_received ;
 int hsc_break_req_destructor (struct hsi_msg*) ;
 struct hsi_msg* hsi_alloc_msg (int ,int ) ;
 int hsi_async_read (struct hsi_client*,struct hsi_msg*) ;
 struct hsc_client_data* hsi_client_drvdata (struct hsi_client*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int hsc_break_request(struct hsi_client *cl)
{
 struct hsc_client_data *cl_data = hsi_client_drvdata(cl);
 struct hsi_msg *msg;
 int ret;

 if (test_and_set_bit(HSC_RXBREAK, &cl_data->flags))
  return -EBUSY;

 msg = hsi_alloc_msg(0, GFP_KERNEL);
 if (!msg) {
  clear_bit(HSC_RXBREAK, &cl_data->flags);
  return -ENOMEM;
 }
 msg->break_frame = 1;
 msg->complete = hsc_break_received;
 msg->destructor = hsc_break_req_destructor;
 ret = hsi_async_read(cl, msg);
 if (ret < 0)
  hsc_break_req_destructor(msg);

 return ret;
}
