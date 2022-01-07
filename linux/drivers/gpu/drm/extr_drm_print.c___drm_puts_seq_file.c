
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_printer {int arg; } ;


 int seq_puts (int ,char const*) ;

void __drm_puts_seq_file(struct drm_printer *p, const char *str)
{
 seq_puts(p->arg, str);
}
