
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipaq_micro_keys {int input; int * codes; } ;


 int ARRAY_SIZE (int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int micro_keycodes ;

__attribute__((used)) static void micro_key_receive(void *data, int len, unsigned char *msg)
{
 struct ipaq_micro_keys *keys = data;
 int key, down;

 down = 0x80 & msg[0];
 key = 0x7f & msg[0];

 if (key < ARRAY_SIZE(micro_keycodes)) {
  input_report_key(keys->input, keys->codes[key], down);
  input_sync(keys->input);
 }
}
