
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ishtp_cl_device {int dummy; } ;
struct ishtp_cl_data {int work_ishtp_reset; int work_fw_load; } ;
struct ishtp_cl {int dummy; } ;


 int cancel_work_sync (int *) ;
 struct ishtp_cl_data* ishtp_get_client_data (struct ishtp_cl*) ;
 struct ishtp_cl* ishtp_get_drvdata (struct ishtp_cl_device*) ;
 int ishtp_put_device (struct ishtp_cl_device*) ;
 int loader_deinit (struct ishtp_cl*) ;

__attribute__((used)) static int loader_ishtp_cl_remove(struct ishtp_cl_device *cl_device)
{
 struct ishtp_cl_data *client_data;
 struct ishtp_cl *loader_ishtp_cl = ishtp_get_drvdata(cl_device);

 client_data = ishtp_get_client_data(loader_ishtp_cl);







 cancel_work_sync(&client_data->work_fw_load);
 cancel_work_sync(&client_data->work_ishtp_reset);
 loader_deinit(loader_ishtp_cl);
 ishtp_put_device(cl_device);

 return 0;
}
