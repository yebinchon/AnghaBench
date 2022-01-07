
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static int _pxvid_to_vd(u8 pxvid)
{
 if (pxvid == 0)
  return 0;

 if (pxvid >= 8 && pxvid < 31)
  pxvid = 31;

 return (pxvid + 2) * 125;
}
