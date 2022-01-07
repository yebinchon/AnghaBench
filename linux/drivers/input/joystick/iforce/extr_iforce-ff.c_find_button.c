
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iforce {TYPE_1__* type; } ;
struct TYPE_2__ {short* btn; } ;



__attribute__((used)) static unsigned char find_button(struct iforce *iforce, signed short button)
{
 int i;

 for (i = 1; iforce->type->btn[i] >= 0; i++)
  if (iforce->type->btn[i] == button)
   return i + 1;
 return 0;
}
