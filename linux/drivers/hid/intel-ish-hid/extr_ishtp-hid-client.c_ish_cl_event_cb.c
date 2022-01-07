
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int data; } ;
struct ishtp_cl_rb {size_t buf_idx; TYPE_1__ buffer; } ;
struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl {int dummy; } ;


 int ishtp_cl_io_rb_recycle (struct ishtp_cl_rb*) ;
 struct ishtp_cl_rb* ishtp_cl_rx_get_rb (struct ishtp_cl*) ;
 struct ishtp_cl* ishtp_get_drvdata (struct ishtp_cl_device*) ;
 int process_recv (struct ishtp_cl*,int ,size_t) ;

__attribute__((used)) static void ish_cl_event_cb(struct ishtp_cl_device *device)
{
 struct ishtp_cl *hid_ishtp_cl = ishtp_get_drvdata(device);
 struct ishtp_cl_rb *rb_in_proc;
 size_t r_length;

 if (!hid_ishtp_cl)
  return;

 while ((rb_in_proc = ishtp_cl_rx_get_rb(hid_ishtp_cl)) != ((void*)0)) {
  if (!rb_in_proc->buffer.data)
   return;

  r_length = rb_in_proc->buf_idx;


  process_recv(hid_ishtp_cl, rb_in_proc->buffer.data, r_length);

  ishtp_cl_io_rb_recycle(rb_in_proc);
 }
}
