
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int dev; int ap_intf_id; } ;
struct gb_operation {struct gb_connection* connection; } ;
struct gb_connection {int dummy; } ;


 int GB_SVC_NO_DE_EMPHASIS ;
 int GB_SVC_SMALL_AMPLITUDE ;
 int GB_SVC_UNIPRO_HS_SERIES_A ;
 int GB_SVC_UNIPRO_SLOW_AUTO_MODE ;
 int dev_warn (int *,char*,int) ;
 struct gb_svc* gb_connection_get_data (struct gb_connection*) ;
 int gb_svc_intf_set_power_mode (struct gb_svc*,int ,int ,int ,int,int,int ,int ,int ,int,int,int ,int ,int *,int *) ;

__attribute__((used)) static void gb_svc_process_hello_deferred(struct gb_operation *operation)
{
 struct gb_connection *connection = operation->connection;
 struct gb_svc *svc = gb_connection_get_data(connection);
 int ret;
 ret = gb_svc_intf_set_power_mode(svc, svc->ap_intf_id,
      GB_SVC_UNIPRO_HS_SERIES_A,
      GB_SVC_UNIPRO_SLOW_AUTO_MODE,
      2, 1,
      GB_SVC_SMALL_AMPLITUDE,
      GB_SVC_NO_DE_EMPHASIS,
      GB_SVC_UNIPRO_SLOW_AUTO_MODE,
      2, 1,
      0, 0,
      ((void*)0), ((void*)0));

 if (ret)
  dev_warn(&svc->dev,
    "power mode change failed on AP to switch link: %d\n",
    ret);
}
