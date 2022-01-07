
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DVB_MAX_ADAPTERS ;
 int ENFILE ;
 scalar_t__ dvbdev_check_free_adapter_num (int) ;

__attribute__((used)) static int dvbdev_get_free_adapter_num (void)
{
 int num = 0;

 while (num < DVB_MAX_ADAPTERS) {
  if (dvbdev_check_free_adapter_num(num))
   return num;
  num++;
 }

 return -ENFILE;
}
