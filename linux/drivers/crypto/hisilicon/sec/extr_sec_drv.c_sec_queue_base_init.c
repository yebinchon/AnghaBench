
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int queue_id; int name; struct sec_dev_info* dev_info; } ;
struct sec_dev_info {int dev; } ;


 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*,int) ;

__attribute__((used)) static void sec_queue_base_init(struct sec_dev_info *info,
    struct sec_queue *queue, int queue_id)
{
 queue->dev_info = info;
 queue->queue_id = queue_id;
 snprintf(queue->name, sizeof(queue->name),
   "%s_%d", dev_name(info->dev), queue->queue_id);
}
