
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct dynapro {scalar_t__ idx; int data; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ DYNAPRO_FORMAT_LENGTH ;
 int DYNAPRO_GET_TOUCHED (int ) ;
 int DYNAPRO_GET_XC (int ) ;
 int DYNAPRO_GET_YC (int ) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void dynapro_process_data(struct dynapro *pdynapro)
{
 struct input_dev *dev = pdynapro->dev;

 if (DYNAPRO_FORMAT_LENGTH == ++pdynapro->idx) {
  input_report_abs(dev, ABS_X, DYNAPRO_GET_XC(pdynapro->data));
  input_report_abs(dev, ABS_Y, DYNAPRO_GET_YC(pdynapro->data));
  input_report_key(dev, BTN_TOUCH,
     DYNAPRO_GET_TOUCHED(pdynapro->data));
  input_sync(dev);

  pdynapro->idx = 0;
 }
}
