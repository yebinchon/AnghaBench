
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl_data {int work; int ishtp_resume_wait; int init_wait; struct ishtp_cl_device* cl_device; struct ishtp_cl* hid_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct ishtp_cl_data* devm_kzalloc (int ,int,int ) ;
 int hid_ishtp_cl_init (struct ishtp_cl*,int ) ;
 int hid_ishtp_cl_reset_handler ;
 int hid_print_trace ;
 int init_waitqueue_head (int *) ;
 struct ishtp_cl* ishtp_cl_allocate (struct ishtp_cl_device*) ;
 int ishtp_cl_free (struct ishtp_cl*) ;
 int ishtp_device (struct ishtp_cl_device*) ;
 int ishtp_get_device (struct ishtp_cl_device*) ;
 int ishtp_set_client_data (struct ishtp_cl*,struct ishtp_cl_data*) ;
 int ishtp_set_drvdata (struct ishtp_cl_device*,struct ishtp_cl*) ;
 int ishtp_trace_callback (struct ishtp_cl_device*) ;

__attribute__((used)) static int hid_ishtp_cl_probe(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl *hid_ishtp_cl;
 struct ishtp_cl_data *client_data;
 int rv;

 if (!cl_device)
  return -ENODEV;

 client_data = devm_kzalloc(ishtp_device(cl_device),
       sizeof(*client_data),
       GFP_KERNEL);
 if (!client_data)
  return -ENOMEM;

 hid_ishtp_cl = ishtp_cl_allocate(cl_device);
 if (!hid_ishtp_cl)
  return -ENOMEM;

 ishtp_set_drvdata(cl_device, hid_ishtp_cl);
 ishtp_set_client_data(hid_ishtp_cl, client_data);
 client_data->hid_ishtp_cl = hid_ishtp_cl;
 client_data->cl_device = cl_device;

 init_waitqueue_head(&client_data->init_wait);
 init_waitqueue_head(&client_data->ishtp_resume_wait);

 INIT_WORK(&client_data->work, hid_ishtp_cl_reset_handler);

 hid_print_trace = ishtp_trace_callback(cl_device);

 rv = hid_ishtp_cl_init(hid_ishtp_cl, 0);
 if (rv) {
  ishtp_cl_free(hid_ishtp_cl);
  return rv;
 }
 ishtp_get_device(cl_device);

 return 0;
}
