
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;
typedef int head ;
typedef size_t __u8 ;


 int GFP_KERNEL ;

 int cpu_to_le32 (int ) ;
 size_t* kmemdup (size_t const*,size_t,int ) ;
 scalar_t__ memcmp (size_t*,size_t const*,int) ;
 int put_unaligned (int ,int *) ;

__u8 *uclogic_rdesc_template_apply(const __u8 *template_ptr,
       size_t template_size,
       const s32 *param_list,
       size_t param_num)
{
 static const __u8 head[] = {128};
 __u8 *rdesc_ptr;
 __u8 *p;
 s32 v;

 rdesc_ptr = kmemdup(template_ptr, template_size, GFP_KERNEL);
 if (rdesc_ptr == ((void*)0))
  return ((void*)0);

 for (p = rdesc_ptr; p + sizeof(head) < rdesc_ptr + template_size;) {
  if (memcmp(p, head, sizeof(head)) == 0 &&
      p[sizeof(head)] < param_num) {
   v = param_list[p[sizeof(head)]];
   put_unaligned(cpu_to_le32(v), (s32 *)p);
   p += sizeof(head) + 1;
  } else {
   p++;
  }
 }

 return rdesc_ptr;
}
