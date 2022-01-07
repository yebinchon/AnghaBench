
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_target {scalar_t__ len; } ;


 int DMWARN (char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 char* kzalloc (int,int ) ;
 int sprintf (char*,char*,...) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int build_constructor_string(struct dm_target *ti,
        unsigned argc, char **argv,
        char **ctr_str)
{
 int i, str_size;
 char *str = ((void*)0);

 *ctr_str = ((void*)0);




 for (i = 0, str_size = 0; i < argc; i++)
  str_size += strlen(argv[i]) + 1;

 str_size += 20;

 str = kzalloc(str_size, GFP_KERNEL);
 if (!str) {
  DMWARN("Unable to allocate memory for constructor string");
  return -ENOMEM;
 }

 str_size = sprintf(str, "%llu", (unsigned long long)ti->len);
 for (i = 0; i < argc; i++)
  str_size += sprintf(str + str_size, " %s", argv[i]);

 *ctr_str = str;
 return str_size;
}
