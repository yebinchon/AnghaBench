
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static inline void nitrox_creq_copy_iv(char *dst, char *src, int size)
{
 memcpy(dst, src, size);
}
