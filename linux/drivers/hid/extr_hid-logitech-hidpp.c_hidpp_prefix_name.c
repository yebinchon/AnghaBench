
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int PREFIX_LENGTH ;
 int kfree (char*) ;
 char* kzalloc (int,int ) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void hidpp_prefix_name(char **name, int name_length)
{


 int new_length;
 char *new_name;

 if (name_length > 9 &&
     strncmp(*name, "Logitech ", 9) == 0)

  return;

 new_length = 9 + name_length;
 new_name = kzalloc(new_length, GFP_KERNEL);
 if (!new_name)
  return;

 snprintf(new_name, new_length, "Logitech %s", *name);

 kfree(*name);

 *name = new_name;
}
