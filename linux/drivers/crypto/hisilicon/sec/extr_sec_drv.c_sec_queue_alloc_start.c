
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int dummy; } ;
struct sec_dev_info {int dev; } ;


 scalar_t__ IS_ERR (struct sec_queue*) ;
 int PTR_ERR (struct sec_queue*) ;
 int dev_err (int ,char*,int ) ;
 struct sec_queue* sec_alloc_queue (struct sec_dev_info*) ;
 int sec_queue_start (struct sec_queue*) ;

__attribute__((used)) static struct sec_queue *sec_queue_alloc_start(struct sec_dev_info *info)
{
 struct sec_queue *queue;

 queue = sec_alloc_queue(info);
 if (IS_ERR(queue)) {
  dev_err(info->dev, "alloc sec queue failed! %ld\n",
   PTR_ERR(queue));
  return queue;
 }

 sec_queue_start(queue);

 return queue;
}
