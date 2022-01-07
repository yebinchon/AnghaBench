
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_data {scalar_t__ suspended; int ishtp_resume_wait; } ;


 int EIO ;
 int HZ ;
 int hid_ishtp_trace (struct ishtp_cl_data*,char*) ;
 int wait_event_interruptible_timeout (int ,int,int) ;

int ishtp_hid_link_ready_wait(struct ishtp_cl_data *client_data)
{
 int rc;

 if (client_data->suspended) {
  hid_ishtp_trace(client_data, "wait for link ready\n");
  rc = wait_event_interruptible_timeout(
     client_data->ishtp_resume_wait,
     !client_data->suspended,
     5 * HZ);

  if (rc == 0) {
   hid_ishtp_trace(client_data, "link not ready\n");
   return -EIO;
  }
  hid_ishtp_trace(client_data, "link ready\n");
 }

 return 0;
}
