
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__* adbhid ;
 int adbhid_input_unregister (int) ;

__attribute__((used)) static void
adbhid_input_devcleanup(u16 exist)
{
 int i;
 for(i=1; i<16; i++)
  if (adbhid[i] && !(exist&(1<<i)))
   adbhid_input_unregister(i);
}
