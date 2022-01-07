
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct appleir {int input_dev; } ;


 int input_report_key (int ,int,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void key_up(struct hid_device *hid, struct appleir *appleir, int key)
{
 input_report_key(appleir->input_dev, key, 0);
 input_sync(appleir->input_dev);
}
