
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yealink_dev {int key_code; struct input_dev* idev; } ;
struct input_dev {int dummy; } ;


 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void report_key(struct yealink_dev *yld, int key)
{
 struct input_dev *idev = yld->idev;

 if (yld->key_code >= 0) {

  input_report_key(idev, yld->key_code & 0xff, 0);
  if (yld->key_code >> 8)
   input_report_key(idev, yld->key_code >> 8, 0);
 }

 yld->key_code = key;
 if (key >= 0) {

  input_report_key(idev, key & 0xff, 1);
  if (key >> 8)
   input_report_key(idev, key >> 8, 1);
 }
 input_sync(idev);
}
