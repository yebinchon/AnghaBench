
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sixaxis_output_report_01 {int dummy; } sixaxis_output_report_01 ;
struct sony_sc {int quirks; void* output_report_dmabuf; TYPE_1__* hdev; } ;
struct TYPE_2__ {int dev; } ;


 int DS4_OUTPUT_REPORT_0x05_SIZE ;
 int DS4_OUTPUT_REPORT_0x11_SIZE ;
 int DUALSHOCK4_CONTROLLER_BT ;
 int DUALSHOCK4_CONTROLLER_USB ;
 int DUALSHOCK4_DONGLE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MOTION_CONTROLLER ;
 int MOTION_REPORT_0x02_SIZE ;
 int NAVIGATION_CONTROLLER ;
 int SIXAXIS_CONTROLLER ;
 void* devm_kmalloc (int *,int,int ) ;

__attribute__((used)) static int sony_allocate_output_report(struct sony_sc *sc)
{
 if ((sc->quirks & SIXAXIS_CONTROLLER) ||
   (sc->quirks & NAVIGATION_CONTROLLER))
  sc->output_report_dmabuf =
   devm_kmalloc(&sc->hdev->dev,
    sizeof(union sixaxis_output_report_01),
    GFP_KERNEL);
 else if (sc->quirks & DUALSHOCK4_CONTROLLER_BT)
  sc->output_report_dmabuf = devm_kmalloc(&sc->hdev->dev,
      DS4_OUTPUT_REPORT_0x11_SIZE,
      GFP_KERNEL);
 else if (sc->quirks & (DUALSHOCK4_CONTROLLER_USB | DUALSHOCK4_DONGLE))
  sc->output_report_dmabuf = devm_kmalloc(&sc->hdev->dev,
      DS4_OUTPUT_REPORT_0x05_SIZE,
      GFP_KERNEL);
 else if (sc->quirks & MOTION_CONTROLLER)
  sc->output_report_dmabuf = devm_kmalloc(&sc->hdev->dev,
      MOTION_REPORT_0x02_SIZE,
      GFP_KERNEL);
 else
  return 0;

 if (!sc->output_report_dmabuf)
  return -ENOMEM;

 return 0;
}
