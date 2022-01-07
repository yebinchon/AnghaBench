
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtouch {scalar_t__ idx; int data; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ MTOUCH_FORMAT_TABLET_LENGTH ;
 int MTOUCH_GET_TOUCHED (int ) ;
 scalar_t__ MTOUCH_GET_XC (int ) ;
 scalar_t__ MTOUCH_GET_YC (int ) ;
 scalar_t__ MTOUCH_MAX_YC ;
 int input_report_abs (struct input_dev*,int ,scalar_t__) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void mtouch_process_format_tablet(struct mtouch *mtouch)
{
 struct input_dev *dev = mtouch->dev;

 if (MTOUCH_FORMAT_TABLET_LENGTH == ++mtouch->idx) {
  input_report_abs(dev, ABS_X, MTOUCH_GET_XC(mtouch->data));
  input_report_abs(dev, ABS_Y, MTOUCH_MAX_YC - MTOUCH_GET_YC(mtouch->data));
  input_report_key(dev, BTN_TOUCH, MTOUCH_GET_TOUCHED(mtouch->data));
  input_sync(dev);

  mtouch->idx = 0;
 }
}
