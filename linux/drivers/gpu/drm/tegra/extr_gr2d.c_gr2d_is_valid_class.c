
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ HOST1X_CLASS_GR2D ;
 scalar_t__ HOST1X_CLASS_GR2D_SB ;

__attribute__((used)) static int gr2d_is_valid_class(u32 class)
{
 return (class == HOST1X_CLASS_GR2D ||
  class == HOST1X_CLASS_GR2D_SB);
}
