
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ishtp_cl_device {int dummy; } ;
struct TYPE_2__ {int wait_queue; } ;
struct ishtp_cl_data {int work_fw_load; scalar_t__ retry_count; int work_ishtp_reset; TYPE_1__ response; struct ishtp_cl_device* cl_device; struct ishtp_cl* loader_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 struct ishtp_cl_data* devm_kzalloc (int ,int,int ) ;
 int init_waitqueue_head (int *) ;
 struct ishtp_cl* ishtp_cl_allocate (struct ishtp_cl_device*) ;
 int ishtp_cl_free (struct ishtp_cl*) ;
 int ishtp_device (struct ishtp_cl_device*) ;
 int ishtp_get_device (struct ishtp_cl_device*) ;
 int ishtp_set_client_data (struct ishtp_cl*,struct ishtp_cl_data*) ;
 int ishtp_set_drvdata (struct ishtp_cl_device*,struct ishtp_cl*) ;
 int load_fw_from_host_handler ;
 int loader_init (struct ishtp_cl*,int ) ;
 int reset_handler ;
 int schedule_work (int *) ;

__attribute__((used)) static int loader_ishtp_cl_probe(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl *loader_ishtp_cl;
 struct ishtp_cl_data *client_data;
 int rv;

 client_data = devm_kzalloc(ishtp_device(cl_device),
       sizeof(*client_data),
       GFP_KERNEL);
 if (!client_data)
  return -ENOMEM;

 loader_ishtp_cl = ishtp_cl_allocate(cl_device);
 if (!loader_ishtp_cl)
  return -ENOMEM;

 ishtp_set_drvdata(cl_device, loader_ishtp_cl);
 ishtp_set_client_data(loader_ishtp_cl, client_data);
 client_data->loader_ishtp_cl = loader_ishtp_cl;
 client_data->cl_device = cl_device;

 init_waitqueue_head(&client_data->response.wait_queue);

 INIT_WORK(&client_data->work_ishtp_reset,
    reset_handler);
 INIT_WORK(&client_data->work_fw_load,
    load_fw_from_host_handler);

 rv = loader_init(loader_ishtp_cl, 0);
 if (rv < 0) {
  ishtp_cl_free(loader_ishtp_cl);
  return rv;
 }
 ishtp_get_device(cl_device);

 client_data->retry_count = 0;


 schedule_work(&client_data->work_fw_load);

 return 0;
}
