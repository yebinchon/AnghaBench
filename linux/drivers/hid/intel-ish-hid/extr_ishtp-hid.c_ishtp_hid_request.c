
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_hid_data {int request_done; int raw_get_req; } ;
struct hostif_msg {int dummy; } ;
struct hid_report {int size; scalar_t__ id; int type; } ;
struct hid_device {struct ishtp_hid_data* driver_data; } ;


 int GFP_KERNEL ;


 int hid_ishtp_get_report (struct hid_device*,scalar_t__,int ) ;
 int hid_ishtp_set_feature (struct hid_device*,char*,unsigned int,scalar_t__) ;
 int hid_output_report (struct hid_report*,int ) ;
 int kfree (char*) ;
 char* kzalloc (unsigned int,int ) ;

__attribute__((used)) static void ishtp_hid_request(struct hid_device *hid, struct hid_report *rep,
 int reqtype)
{
 struct ishtp_hid_data *hid_data = hid->driver_data;

 unsigned int len = ((rep->size - 1) >> 3) + 1 + (rep->id > 0);
 char *buf;
 unsigned int header_size = sizeof(struct hostif_msg);

 len += header_size;

 hid_data->request_done = 0;
 switch (reqtype) {
 case 129:
  hid_data->raw_get_req = 0;
  hid_ishtp_get_report(hid, rep->id, rep->type);
  break;
 case 128:




  buf = kzalloc(len + 7, GFP_KERNEL);
  if (!buf)
   return;

  hid_output_report(rep, buf + header_size);
  hid_ishtp_set_feature(hid, buf, len, rep->id);
  kfree(buf);
  break;
 }
}
