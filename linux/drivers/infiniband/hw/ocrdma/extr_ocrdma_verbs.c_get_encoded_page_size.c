
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_encoded_page_size(int pg_sz)
{

 int i = 0;
 for (; i < 17; i++)
  if (pg_sz == (4096 << i))
   break;
 return i;
}
