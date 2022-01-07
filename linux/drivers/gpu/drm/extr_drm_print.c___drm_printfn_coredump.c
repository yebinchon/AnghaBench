
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct va_format {int dummy; } ;
struct drm_printer {struct drm_print_iterator* arg; } ;
struct drm_print_iterator {size_t remain; scalar_t__ offset; scalar_t__ start; scalar_t__ data; } ;
typedef int ssize_t ;


 int GFP_KERNEL ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __drm_puts_coredump (struct drm_printer*,char const*) ;
 int kfree (char*) ;
 char* kmalloc (size_t,int) ;
 size_t snprintf (char*,size_t,char*,struct va_format*) ;

void __drm_printfn_coredump(struct drm_printer *p, struct va_format *vaf)
{
 struct drm_print_iterator *iterator = p->arg;
 size_t len;
 char *buf;

 if (!iterator->remain)
  return;


 len = snprintf(((void*)0), 0, "%pV", vaf);


 if (iterator->offset + len <= iterator->start) {
  iterator->offset += len;
  return;
 }


 if ((iterator->offset >= iterator->start) && (len < iterator->remain)) {
  ssize_t pos = iterator->offset - iterator->start;

  snprintf(((char *) iterator->data) + pos,
   iterator->remain, "%pV", vaf);

  iterator->offset += len;
  iterator->remain -= len;

  return;
 }





 buf = kmalloc(len + 1, GFP_KERNEL | __GFP_NOWARN | __GFP_NORETRY);
 if (!buf)
  return;

 snprintf(buf, len + 1, "%pV", vaf);
 __drm_puts_coredump(p, (const char *) buf);

 kfree(buf);
}
