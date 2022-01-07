
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_KERNEL ;
 int GFP_NOIO ;
 int kfree (char**) ;
 char** kmalloc_array (unsigned int,int,int ) ;
 int memcpy (char**,char**,unsigned int) ;

__attribute__((used)) static char **realloc_argv(unsigned *size, char **old_argv)
{
 char **argv;
 unsigned new_size;
 gfp_t gfp;

 if (*size) {
  new_size = *size * 2;
  gfp = GFP_KERNEL;
 } else {
  new_size = 8;
  gfp = GFP_NOIO;
 }
 argv = kmalloc_array(new_size, sizeof(*argv), gfp);
 if (argv && old_argv) {
  memcpy(argv, old_argv, *size * sizeof(*argv));
  *size = new_size;
 }

 kfree(old_argv);
 return argv;
}
