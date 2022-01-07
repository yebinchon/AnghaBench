
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ocrdma_dev {int dummy; } ;



 int ocrdma_shutdown (struct ocrdma_dev*) ;

__attribute__((used)) static void ocrdma_event_handler(struct ocrdma_dev *dev, u32 event)
{
 switch (event) {
 case 128:
  ocrdma_shutdown(dev);
  break;
 default:
  break;
 }
}
