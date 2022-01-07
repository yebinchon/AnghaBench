
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_queue {int regs; } ;


 int iounmap (int ) ;

__attribute__((used)) static void sec_queue_unmap_io(struct sec_queue *queue)
{
  iounmap(queue->regs);
}
