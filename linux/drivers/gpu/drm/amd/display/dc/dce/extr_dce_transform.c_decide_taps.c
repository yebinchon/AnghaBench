
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fixed31_32 {int dummy; } ;


 scalar_t__ IDENTITY_RATIO (struct fixed31_32) ;

__attribute__((used)) static uint32_t decide_taps(struct fixed31_32 ratio, uint32_t in_taps, bool chroma)
{
 uint32_t taps;

 if (IDENTITY_RATIO(ratio)) {
  return 1;
 } else if (in_taps != 0) {
  taps = in_taps;
 } else {
  taps = 4;
 }

 if (chroma) {
  taps /= 2;
  if (taps < 2)
   taps = 2;
 }

 return taps;
}
