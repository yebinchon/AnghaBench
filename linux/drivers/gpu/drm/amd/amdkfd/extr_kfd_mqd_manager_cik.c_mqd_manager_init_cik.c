
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqd_manager {int mqd_size; void* debugfs_show_mqd; void* is_occupied; void* destroy_mqd; void* update_mqd; void* load_mqd; void* free_mqd; void* init_mqd; void* allocate_mqd; struct kfd_dev* dev; } ;
struct kfd_dev {int dummy; } ;
struct cik_sdma_rlc_registers {int dummy; } ;
struct cik_mqd {int dummy; } ;
typedef enum KFD_MQD_TYPE { ____Placeholder_KFD_MQD_TYPE } KFD_MQD_TYPE ;


 int GFP_KERNEL ;




 int KFD_MQD_TYPE_MAX ;

 scalar_t__ WARN_ON (int) ;
 void* allocate_hiq_mqd ;
 void* allocate_mqd ;
 void* allocate_sdma_mqd ;
 void* debugfs_show_mqd ;
 void* debugfs_show_mqd_sdma ;
 void* destroy_mqd ;
 void* destroy_mqd_sdma ;
 void* free_mqd ;
 void* free_mqd_hiq_sdma ;
 void* init_mqd ;
 void* init_mqd_hiq ;
 void* init_mqd_sdma ;
 void* is_occupied ;
 void* is_occupied_sdma ;
 int kfree (struct mqd_manager*) ;
 struct mqd_manager* kzalloc (int,int ) ;
 void* load_mqd ;
 void* load_mqd_sdma ;
 void* update_mqd ;
 void* update_mqd_hiq ;
 void* update_mqd_sdma ;

struct mqd_manager *mqd_manager_init_cik(enum KFD_MQD_TYPE type,
  struct kfd_dev *dev)
{
 struct mqd_manager *mqd;

 if (WARN_ON(type >= KFD_MQD_TYPE_MAX))
  return ((void*)0);

 mqd = kzalloc(sizeof(*mqd), GFP_KERNEL);
 if (!mqd)
  return ((void*)0);

 mqd->dev = dev;

 switch (type) {
 case 131:
 case 132:
  mqd->allocate_mqd = allocate_mqd;
  mqd->init_mqd = init_mqd;
  mqd->free_mqd = free_mqd;
  mqd->load_mqd = load_mqd;
  mqd->update_mqd = update_mqd;
  mqd->destroy_mqd = destroy_mqd;
  mqd->is_occupied = is_occupied;
  mqd->mqd_size = sizeof(struct cik_mqd);



  break;
 case 129:
  mqd->allocate_mqd = allocate_hiq_mqd;
  mqd->init_mqd = init_mqd_hiq;
  mqd->free_mqd = free_mqd_hiq_sdma;
  mqd->load_mqd = load_mqd;
  mqd->update_mqd = update_mqd_hiq;
  mqd->destroy_mqd = destroy_mqd;
  mqd->is_occupied = is_occupied;
  mqd->mqd_size = sizeof(struct cik_mqd);



  break;
 case 130:
  mqd->allocate_mqd = allocate_hiq_mqd;
  mqd->init_mqd = init_mqd_hiq;
  mqd->free_mqd = free_mqd;
  mqd->load_mqd = load_mqd;
  mqd->update_mqd = update_mqd_hiq;
  mqd->destroy_mqd = destroy_mqd;
  mqd->is_occupied = is_occupied;
  mqd->mqd_size = sizeof(struct cik_mqd);



  break;
 case 128:
  mqd->allocate_mqd = allocate_sdma_mqd;
  mqd->init_mqd = init_mqd_sdma;
  mqd->free_mqd = free_mqd_hiq_sdma;
  mqd->load_mqd = load_mqd_sdma;
  mqd->update_mqd = update_mqd_sdma;
  mqd->destroy_mqd = destroy_mqd_sdma;
  mqd->is_occupied = is_occupied_sdma;
  mqd->mqd_size = sizeof(struct cik_sdma_rlc_registers);



  break;
 default:
  kfree(mqd);
  return ((void*)0);
 }

 return mqd;
}
