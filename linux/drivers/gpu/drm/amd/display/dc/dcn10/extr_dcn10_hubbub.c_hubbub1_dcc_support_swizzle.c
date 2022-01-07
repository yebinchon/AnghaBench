
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum swizzle_mode_values { ____Placeholder_swizzle_mode_values } swizzle_mode_values ;
typedef enum segment_order { ____Placeholder_segment_order } segment_order ;
 int segment_order__contiguous ;
 int segment_order__na ;
 int segment_order__non_contiguous ;

__attribute__((used)) static bool hubbub1_dcc_support_swizzle(
  enum swizzle_mode_values swizzle,
  unsigned int bytes_per_element,
  enum segment_order *segment_order_horz,
  enum segment_order *segment_order_vert)
{
 bool standard_swizzle = 0;
 bool display_swizzle = 0;

 switch (swizzle) {
 case 137:
 case 133:
 case 129:
 case 136:
 case 132:
 case 128:
  standard_swizzle = 1;
  break;
 case 139:
 case 135:
 case 131:
 case 138:
 case 134:
 case 130:
  display_swizzle = 1;
  break;
 default:
  break;
 }

 if (bytes_per_element == 1 && standard_swizzle) {
  *segment_order_horz = segment_order__contiguous;
  *segment_order_vert = segment_order__na;
  return 1;
 }
 if (bytes_per_element == 2 && standard_swizzle) {
  *segment_order_horz = segment_order__non_contiguous;
  *segment_order_vert = segment_order__contiguous;
  return 1;
 }
 if (bytes_per_element == 4 && standard_swizzle) {
  *segment_order_horz = segment_order__non_contiguous;
  *segment_order_vert = segment_order__contiguous;
  return 1;
 }
 if (bytes_per_element == 8 && standard_swizzle) {
  *segment_order_horz = segment_order__na;
  *segment_order_vert = segment_order__contiguous;
  return 1;
 }
 if (bytes_per_element == 8 && display_swizzle) {
  *segment_order_horz = segment_order__contiguous;
  *segment_order_vert = segment_order__non_contiguous;
  return 1;
 }

 return 0;
}
