
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int strlen (char*) ;

__attribute__((used)) static int get_key_size(char **key_string)
{
 return (*key_string[0] == ':') ? -EINVAL : strlen(*key_string) >> 1;
}
