
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qxl_device {TYPE_1__* client_monitors_config; } ;
struct TYPE_4__ {unsigned int count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int heads ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int ,int ) ;
 int struct_size (TYPE_1__*,int ,unsigned int) ;

__attribute__((used)) static int qxl_alloc_client_monitors_config(struct qxl_device *qdev,
  unsigned int count)
{
 if (qdev->client_monitors_config &&
     count > qdev->client_monitors_config->count) {
  kfree(qdev->client_monitors_config);
  qdev->client_monitors_config = ((void*)0);
 }
 if (!qdev->client_monitors_config) {
  qdev->client_monitors_config = kzalloc(
    struct_size(qdev->client_monitors_config,
    heads, count), GFP_KERNEL);
  if (!qdev->client_monitors_config)
   return -ENOMEM;
 }
 qdev->client_monitors_config->count = count;
 return 0;
}
