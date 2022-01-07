
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsxxxaa {int count; scalar_t__ buf; } ;


 scalar_t__ BUFLEN ;
 int memmove (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void vsxxxaa_drop_bytes(struct vsxxxaa *mouse, int num)
{
 if (num >= mouse->count) {
  mouse->count = 0;
 } else {
  memmove(mouse->buf, mouse->buf + num, BUFLEN - num);
  mouse->count -= num;
 }
}
