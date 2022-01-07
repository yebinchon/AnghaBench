
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ishtp_cl_data {int report_descr_done; int * report_descr; int init_wait; TYPE_2__* hid_devices; } ;
struct ishtp_cl {int dummy; } ;
struct TYPE_3__ {int device_id; int command; } ;
struct hostif_msg {TYPE_1__ hdr; } ;
struct TYPE_4__ {int dev_id; } ;


 int EIO ;
 int ENOMEM ;
 int HOSTIF_GET_REPORT_DESCRIPTOR ;
 int HZ ;
 int cl_data_to_dev (struct ishtp_cl_data*) ;
 int dev_err (int ,char*) ;
 int ishtp_cl_send (struct ishtp_cl*,unsigned char*,int) ;
 struct ishtp_cl_data* ishtp_get_client_data (struct ishtp_cl*) ;
 int memset (struct hostif_msg*,int ,int) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

__attribute__((used)) static int ishtp_get_report_descriptor(struct ishtp_cl *hid_ishtp_cl,
           int index)
{
 struct hostif_msg msg;
 struct ishtp_cl_data *client_data = ishtp_get_client_data(hid_ishtp_cl);
 int rv;


 client_data->report_descr_done = 0;
 memset(&msg, 0, sizeof(struct hostif_msg));
 msg.hdr.command = HOSTIF_GET_REPORT_DESCRIPTOR;
 msg.hdr.device_id = client_data->hid_devices[index].dev_id;
 rv = ishtp_cl_send(hid_ishtp_cl, (unsigned char *) &msg,
      sizeof(struct hostif_msg));
 if (rv)
  return rv;

 if (!client_data->report_descr_done)
  wait_event_interruptible_timeout(client_data->init_wait,
      client_data->report_descr_done,
      3 * HZ);
 if (!client_data->report_descr_done) {
  dev_err(cl_data_to_dev(client_data),
    "[hid-ish]: timed out for report descr\n");
  return -EIO;
 }
 if (!client_data->report_descr[index]) {
  dev_err(cl_data_to_dev(client_data),
   "[hid-ish]: failed to alloc report descr\n");
  return -ENOMEM;
 }

 return 0;
}
