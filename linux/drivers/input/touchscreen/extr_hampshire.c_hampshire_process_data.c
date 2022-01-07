
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hampshire {scalar_t__ idx; int data; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ HAMPSHIRE_FORMAT_LENGTH ;
 int HAMPSHIRE_GET_TOUCHED (int ) ;
 int HAMPSHIRE_GET_XC (int ) ;
 int HAMPSHIRE_GET_YC (int ) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void hampshire_process_data(struct hampshire *phampshire)
{
 struct input_dev *dev = phampshire->dev;

 if (HAMPSHIRE_FORMAT_LENGTH == ++phampshire->idx) {
  input_report_abs(dev, ABS_X, HAMPSHIRE_GET_XC(phampshire->data));
  input_report_abs(dev, ABS_Y, HAMPSHIRE_GET_YC(phampshire->data));
  input_report_key(dev, BTN_TOUCH,
     HAMPSHIRE_GET_TOUCHED(phampshire->data));
  input_sync(dev);

  phampshire->idx = 0;
 }
}
