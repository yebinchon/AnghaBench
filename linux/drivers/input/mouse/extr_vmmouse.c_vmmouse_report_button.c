
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;
struct input_dev {int key; } ;


 int input_report_key (struct input_dev*,unsigned int,int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static void vmmouse_report_button(struct psmouse *psmouse,
      struct input_dev *abs_dev,
      struct input_dev *rel_dev,
      struct input_dev *pref_dev,
      unsigned int code, int value)
{
 if (test_bit(code, abs_dev->key))
  pref_dev = abs_dev;
 else if (test_bit(code, rel_dev->key))
  pref_dev = rel_dev;

 input_report_key(pref_dev, code, value);
}
