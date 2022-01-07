
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 scalar_t__ memchr_inv (int const*,int ,int) ;

__attribute__((used)) static bool drm_edid_is_zero(const u8 *in_edid, int length)
{
 if (memchr_inv(in_edid, 0, length))
  return 0;

 return 1;
}
