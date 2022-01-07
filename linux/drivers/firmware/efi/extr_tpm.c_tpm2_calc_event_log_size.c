
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcg_pcr_event2_head {int dummy; } ;


 int __calc_tpm2_event_size (struct tcg_pcr_event2_head*,void*,int) ;

__attribute__((used)) static int tpm2_calc_event_log_size(void *data, int count, void *size_info)
{
 struct tcg_pcr_event2_head *header;
 int event_size, size = 0;

 while (count > 0) {
  header = data + size;
  event_size = __calc_tpm2_event_size(header, size_info, 1);
  if (event_size == 0)
   return -1;
  size += event_size;
  count--;
 }

 return size;
}
