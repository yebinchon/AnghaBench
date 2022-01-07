
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum tiler_fmt { ____Placeholder_tiler_fmt } tiler_fmt ;


 int OMAP_BO_TILED ;



 int TILFMT_16BIT ;
 int TILFMT_32BIT ;
 int TILFMT_8BIT ;
 int TILFMT_PAGE ;

__attribute__((used)) static inline enum tiler_fmt gem2fmt(u32 flags)
{
 switch (flags & OMAP_BO_TILED) {
 case 128:
  return TILFMT_8BIT;
 case 130:
  return TILFMT_16BIT;
 case 129:
  return TILFMT_32BIT;
 default:
  return TILFMT_PAGE;
 }
}
