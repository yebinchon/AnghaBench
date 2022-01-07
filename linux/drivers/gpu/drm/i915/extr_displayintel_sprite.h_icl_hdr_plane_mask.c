
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int ) ;
 int PLANE_PRIMARY ;
 int PLANE_SPRITE0 ;
 int PLANE_SPRITE1 ;

__attribute__((used)) static inline u8 icl_hdr_plane_mask(void)
{
 return BIT(PLANE_PRIMARY) |
  BIT(PLANE_SPRITE0) | BIT(PLANE_SPRITE1);
}
