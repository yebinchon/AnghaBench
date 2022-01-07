
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct extcon_dev {int* mutually_exclusive; } ;


 int hweight32 (int) ;

__attribute__((used)) static int check_mutually_exclusive(struct extcon_dev *edev, u32 new_state)
{
 int i = 0;

 if (!edev->mutually_exclusive)
  return 0;

 for (i = 0; edev->mutually_exclusive[i]; i++) {
  int weight;
  u32 correspondants = new_state & edev->mutually_exclusive[i];


  weight = hweight32(correspondants);
  if (weight > 1)
   return i + 1;
 }

 return 0;
}
