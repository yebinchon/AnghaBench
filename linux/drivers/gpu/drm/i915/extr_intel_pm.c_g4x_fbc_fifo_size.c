
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MISSING_CASE (int) ;

__attribute__((used)) static int g4x_fbc_fifo_size(int level)
{
 switch (level) {
 case 128:
  return 7;
 case 129:
  return 15;
 default:
  MISSING_CASE(level);
  return 0;
 }
}
