
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_device {int dummy; } ;


 int MAX_ZIP_DEVICES ;
 struct zip_device** zip_dev ;
 int zip_err (char*,int) ;

struct zip_device *zip_get_device(int node)
{
 if ((node < MAX_ZIP_DEVICES) && (node >= 0))
  return zip_dev[node];

 zip_err("ZIP device not found for node id %d\n", node);
 return ((void*)0);
}
