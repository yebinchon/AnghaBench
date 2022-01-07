
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adp5520_keys {int input; int * keycode; } ;


 int ADP5520_MAXKEYS ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void adp5520_keys_report_event(struct adp5520_keys *dev,
     unsigned short keymask, int value)
{
 int i;

 for (i = 0; i < ADP5520_MAXKEYS; i++)
  if (keymask & (1 << i))
   input_report_key(dev->input, dev->keycode[i], value);

 input_sync(dev->input);
}
