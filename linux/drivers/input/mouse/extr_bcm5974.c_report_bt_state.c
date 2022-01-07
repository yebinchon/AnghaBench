
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bt_data {int dummy; } ;
struct bcm5974 {int input; TYPE_1__* bt_data; } ;
struct TYPE_2__ {int button; int rel_y; int rel_x; int unknown1; } ;


 int BTN_LEFT ;
 int EIO ;
 int dprintk (int,char*,int ,int ,int ,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static int report_bt_state(struct bcm5974 *dev, int size)
{
 if (size != sizeof(struct bt_data))
  return -EIO;

 dprintk(7,
  "bcm5974: button data: %x %x %x %x\n",
  dev->bt_data->unknown1, dev->bt_data->button,
  dev->bt_data->rel_x, dev->bt_data->rel_y);

 input_report_key(dev->input, BTN_LEFT, dev->bt_data->button);
 input_sync(dev->input);

 return 0;
}
