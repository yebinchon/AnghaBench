
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gb_svc {int connection; } ;


 int gb_connection_enable (int ) ;

int gb_svc_add(struct gb_svc *svc)
{
 int ret;






 ret = gb_connection_enable(svc->connection);
 if (ret)
  return ret;

 return 0;
}
