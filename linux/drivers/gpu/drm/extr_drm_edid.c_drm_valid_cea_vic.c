
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ARRAY_SIZE (int ) ;
 int edid_cea_modes ;

__attribute__((used)) static bool drm_valid_cea_vic(u8 vic)
{
 return vic > 0 && vic < ARRAY_SIZE(edid_cea_modes);
}
