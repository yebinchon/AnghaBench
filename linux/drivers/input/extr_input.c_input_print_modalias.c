
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bustype; int vendor; int product; int version; } ;
struct input_dev {int swbit; int ffbit; int sndbit; int ledbit; int mscbit; int absbit; int relbit; int keybit; int evbit; TYPE_1__ id; } ;


 int ABS_MAX ;
 int EV_MAX ;
 int FF_MAX ;
 int KEY_MAX ;
 int KEY_MIN_INTERESTING ;
 int LED_MAX ;
 int MSC_MAX ;
 int REL_MAX ;
 int SND_MAX ;
 int SW_MAX ;
 scalar_t__ input_print_modalias_bits (char*,int,char,int ,int ,int ) ;
 int max (int,int ) ;
 int snprintf (char*,int ,char*,...) ;

__attribute__((used)) static int input_print_modalias(char *buf, int size, struct input_dev *id,
    int add_cr)
{
 int len;

 len = snprintf(buf, max(size, 0),
         "input:b%04Xv%04Xp%04Xe%04X-",
         id->id.bustype, id->id.vendor,
         id->id.product, id->id.version);

 len += input_print_modalias_bits(buf + len, size - len,
    'e', id->evbit, 0, EV_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'k', id->keybit, KEY_MIN_INTERESTING, KEY_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'r', id->relbit, 0, REL_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'a', id->absbit, 0, ABS_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'm', id->mscbit, 0, MSC_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'l', id->ledbit, 0, LED_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    's', id->sndbit, 0, SND_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'f', id->ffbit, 0, FF_MAX);
 len += input_print_modalias_bits(buf + len, size - len,
    'w', id->swbit, 0, SW_MAX);

 if (add_cr)
  len += snprintf(buf + len, max(size - len, 0), "\n");

 return len;
}
