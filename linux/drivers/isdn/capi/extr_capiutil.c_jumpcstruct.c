
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p; } ;
typedef TYPE_1__ _cmsg ;


 int TYP ;



__attribute__((used)) static void jumpcstruct(_cmsg *cmsg)
{
 unsigned layer;
 for (cmsg->p++, layer = 1; layer;) {

  cmsg->p++;
  switch (TYP) {
  case 128:
   layer++;
   break;
  case 129:
   layer--;
   break;
  }
 }
}
