
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int edac_dbg (int,char*) ;

__attribute__((used)) static inline int e7xxx_find_channel(u16 syndrome)
{
 edac_dbg(3, "\n");

 if ((syndrome & 0xff00) == 0)
  return 0;

 if ((syndrome & 0x00ff) == 0)
  return 1;

 if ((syndrome & 0xf000) == 0 || (syndrome & 0x0f00) == 0)
  return 0;

 return 1;
}
