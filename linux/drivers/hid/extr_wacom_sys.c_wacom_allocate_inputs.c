
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wacom_wac {int pad_name; TYPE_2__* pad_input; int touch_name; TYPE_1__* touch_input; int pen_name; TYPE_3__* pen_input; } ;
struct wacom {struct wacom_wac wacom_wac; } ;
struct TYPE_6__ {int name; } ;
struct TYPE_5__ {int name; } ;
struct TYPE_4__ {int name; } ;


 int ENOMEM ;
 void* wacom_allocate_input (struct wacom*) ;

__attribute__((used)) static int wacom_allocate_inputs(struct wacom *wacom)
{
 struct wacom_wac *wacom_wac = &(wacom->wacom_wac);

 wacom_wac->pen_input = wacom_allocate_input(wacom);
 wacom_wac->touch_input = wacom_allocate_input(wacom);
 wacom_wac->pad_input = wacom_allocate_input(wacom);
 if (!wacom_wac->pen_input ||
     !wacom_wac->touch_input ||
     !wacom_wac->pad_input)
  return -ENOMEM;

 wacom_wac->pen_input->name = wacom_wac->pen_name;
 wacom_wac->touch_input->name = wacom_wac->touch_name;
 wacom_wac->pad_input->name = wacom_wac->pad_name;

 return 0;
}
