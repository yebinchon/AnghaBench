
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int len; int len1; } ;


 unsigned short be16_to_cpu (int ) ;

__attribute__((used)) static unsigned short from_talitos_ptr_len(struct talitos_ptr *ptr,
        bool is_sec1)
{
 if (is_sec1)
  return be16_to_cpu(ptr->len1);
 else
  return be16_to_cpu(ptr->len);
}
