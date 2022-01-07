
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidma_tre {int data; int (* callback ) (int ) ;} ;
struct hidma_lldev {int handoff_fifo; } ;


 scalar_t__ kfifo_out (int *,struct hidma_tre**,int) ;
 int stub1 (int ) ;

__attribute__((used)) static void hidma_ll_tre_complete(unsigned long arg)
{
 struct hidma_lldev *lldev = (struct hidma_lldev *)arg;
 struct hidma_tre *tre;

 while (kfifo_out(&lldev->handoff_fifo, &tre, 1)) {

  if (tre->callback)
   tre->callback(tre->data);
 }
}
