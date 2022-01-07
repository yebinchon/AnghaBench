
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct inexio {scalar_t__ idx; int data; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ INEXIO_FORMAT_LENGTH ;
 int INEXIO_GET_TOUCHED (int ) ;
 int INEXIO_GET_XC (int ) ;
 int INEXIO_GET_YC (int ) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void inexio_process_data(struct inexio *pinexio)
{
 struct input_dev *dev = pinexio->dev;

 if (INEXIO_FORMAT_LENGTH == ++pinexio->idx) {
  input_report_abs(dev, ABS_X, INEXIO_GET_XC(pinexio->data));
  input_report_abs(dev, ABS_Y, INEXIO_GET_YC(pinexio->data));
  input_report_key(dev, BTN_TOUCH, INEXIO_GET_TOUCHED(pinexio->data));
  input_sync(dev);

  pinexio->idx = 0;
 }
}
