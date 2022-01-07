
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i3c_ibi_slot {int work; struct i3c_dev_desc* dev; } ;
struct i3c_dev_desc {int dummy; } ;


 int INIT_WORK (int *,int ) ;
 int i3c_master_handle_ibi ;

__attribute__((used)) static void i3c_master_init_ibi_slot(struct i3c_dev_desc *dev,
         struct i3c_ibi_slot *slot)
{
 slot->dev = dev;
 INIT_WORK(&slot->work, i3c_master_handle_ibi);
}
