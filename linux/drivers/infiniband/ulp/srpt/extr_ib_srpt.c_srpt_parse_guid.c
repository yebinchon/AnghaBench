
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;


 int EINVAL ;
 int get_unaligned_be64 (int *) ;
 int sscanf (char const*,char*,int *,int *,int *,int *) ;

__attribute__((used)) static int srpt_parse_guid(u64 *guid, const char *name)
{
 u16 w[4];
 int ret = -EINVAL;

 if (sscanf(name, "%hx:%hx:%hx:%hx", &w[0], &w[1], &w[2], &w[3]) != 4)
  goto out;
 *guid = get_unaligned_be64(w);
 ret = 0;
out:
 return ret;
}
