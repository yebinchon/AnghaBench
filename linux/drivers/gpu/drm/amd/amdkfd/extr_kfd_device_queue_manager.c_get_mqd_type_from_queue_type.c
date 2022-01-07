
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum kfd_queue_type { ____Placeholder_kfd_queue_type } kfd_queue_type ;
typedef enum KFD_MQD_TYPE { ____Placeholder_KFD_MQD_TYPE } KFD_MQD_TYPE ;


 int KFD_MQD_TYPE_CP ;
 int KFD_MQD_TYPE_SDMA ;
 int KFD_QUEUE_TYPE_SDMA ;
 int KFD_QUEUE_TYPE_SDMA_XGMI ;

__attribute__((used)) static inline
enum KFD_MQD_TYPE get_mqd_type_from_queue_type(enum kfd_queue_type type)
{
 if (type == KFD_QUEUE_TYPE_SDMA || type == KFD_QUEUE_TYPE_SDMA_XGMI)
  return KFD_MQD_TYPE_SDMA;
 return KFD_MQD_TYPE_CP;
}
