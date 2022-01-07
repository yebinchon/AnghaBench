
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcmcia_device {TYPE_1__** resource; } ;
struct TYPE_2__ {int flags; int end; } ;


 int ENODEV ;
 int IO_DATA_PATH_WIDTH ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int pcmcia_request_io (struct pcmcia_device*) ;

__attribute__((used)) static int pcmcia_check_one_config(struct pcmcia_device *pdev, void *priv_data)
{
 int *is_kme = priv_data;

 if ((pdev->resource[0]->flags & IO_DATA_PATH_WIDTH)
     != IO_DATA_PATH_WIDTH_8) {
  pdev->resource[0]->flags &= ~IO_DATA_PATH_WIDTH;
  pdev->resource[0]->flags |= IO_DATA_PATH_WIDTH_AUTO;
 }
 pdev->resource[1]->flags &= ~IO_DATA_PATH_WIDTH;
 pdev->resource[1]->flags |= IO_DATA_PATH_WIDTH_8;

 if (pdev->resource[1]->end) {
  pdev->resource[0]->end = 8;
  pdev->resource[1]->end = (*is_kme) ? 2 : 1;
 } else {
  if (pdev->resource[0]->end < 16)
   return -ENODEV;
 }

 return pcmcia_request_io(pdev);
}
