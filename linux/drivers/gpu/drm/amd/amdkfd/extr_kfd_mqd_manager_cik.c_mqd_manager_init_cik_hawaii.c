
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqd_manager {int update_mqd; } ;
struct kfd_dev {int dummy; } ;
typedef enum KFD_MQD_TYPE { ____Placeholder_KFD_MQD_TYPE } KFD_MQD_TYPE ;


 int KFD_MQD_TYPE_COMPUTE ;
 int KFD_MQD_TYPE_CP ;
 struct mqd_manager* mqd_manager_init_cik (int,struct kfd_dev*) ;
 int update_mqd_hawaii ;

struct mqd_manager *mqd_manager_init_cik_hawaii(enum KFD_MQD_TYPE type,
   struct kfd_dev *dev)
{
 struct mqd_manager *mqd;

 mqd = mqd_manager_init_cik(type, dev);
 if (!mqd)
  return ((void*)0);
 if ((type == KFD_MQD_TYPE_CP) || (type == KFD_MQD_TYPE_COMPUTE))
  mqd->update_mqd = update_mqd_hawaii;
 return mqd;
}
