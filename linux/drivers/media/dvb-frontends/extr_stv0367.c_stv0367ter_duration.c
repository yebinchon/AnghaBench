
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



__attribute__((used)) static int stv0367ter_duration(s32 mode, int tempo1, int tempo2, int tempo3)
{
 int local_tempo = 0;
 switch (mode) {
 case 0:
  local_tempo = tempo1;
  break;
 case 1:
  local_tempo = tempo2;
  break ;

 case 2:
  local_tempo = tempo3;
  break;

 default:
  break;
 }

 return local_tempo;
}
