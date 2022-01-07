
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int ssize_t ;
typedef int buf_cpy ;


 int AMDGPU_MASK_BUF_MAX ;
 int EINVAL ;
 int kstrtol (char*,int ,long*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t min (size_t,int) ;
 scalar_t__ strlen (char*) ;
 char* strsep (char**,char const*) ;

__attribute__((used)) static ssize_t amdgpu_read_mask(const char *buf, size_t count, uint32_t *mask)
{
 int ret;
 long level;
 char *sub_str = ((void*)0);
 char *tmp;
 char buf_cpy[AMDGPU_MASK_BUF_MAX + 1];
 const char delimiter[3] = {' ', '\n', '\0'};
 size_t bytes;

 *mask = 0;

 bytes = min(count, sizeof(buf_cpy) - 1);
 memcpy(buf_cpy, buf, bytes);
 buf_cpy[bytes] = '\0';
 tmp = buf_cpy;
 while (tmp[0]) {
  sub_str = strsep(&tmp, delimiter);
  if (strlen(sub_str)) {
   ret = kstrtol(sub_str, 0, &level);
   if (ret)
    return -EINVAL;
   *mask |= 1 << level;
  } else
   break;
 }

 return 0;
}
