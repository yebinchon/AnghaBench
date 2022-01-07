
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct talitos_ptr {int eptr; int len; int len1; int ptr; } ;



__attribute__((used)) static void copy_talitos_ptr(struct talitos_ptr *dst_ptr,
        struct talitos_ptr *src_ptr, bool is_sec1)
{
 dst_ptr->ptr = src_ptr->ptr;
 if (is_sec1) {
  dst_ptr->len1 = src_ptr->len1;
 } else {
  dst_ptr->len = src_ptr->len;
  dst_ptr->eptr = src_ptr->eptr;
 }
}
