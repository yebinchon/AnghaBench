
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum swizzle_mode_values { ____Placeholder_swizzle_mode_values } swizzle_mode_values ;
typedef enum segment_order { ____Placeholder_segment_order } segment_order ;
 int segment_order__contiguous ;
 int segment_order__na ;
 int segment_order__non_contiguous ;

bool hubbub2_dcc_support_swizzle(
  enum swizzle_mode_values swizzle,
  unsigned int bytes_per_element,
  enum segment_order *segment_order_horz,
  enum segment_order *segment_order_vert)
{
 bool standard_swizzle = 0;
 bool display_swizzle = 0;
 bool render_swizzle = 0;

 switch (swizzle) {
 case 138:
 case 133:
 case 129:
 case 137:
 case 132:
 case 128:
  standard_swizzle = 1;
  break;
 case 134:
  render_swizzle = 1;
  break;
 case 140:
 case 136:
 case 131:
 case 139:
 case 135:
 case 130:
  display_swizzle = 1;
  break;
 default:
  break;
 }

 if (standard_swizzle) {
  if (bytes_per_element == 1) {
   *segment_order_horz = segment_order__contiguous;
   *segment_order_vert = segment_order__na;
   return 1;
  }
  if (bytes_per_element == 2) {
   *segment_order_horz = segment_order__non_contiguous;
   *segment_order_vert = segment_order__contiguous;
   return 1;
  }
  if (bytes_per_element == 4) {
   *segment_order_horz = segment_order__non_contiguous;
   *segment_order_vert = segment_order__contiguous;
   return 1;
  }
  if (bytes_per_element == 8) {
   *segment_order_horz = segment_order__na;
   *segment_order_vert = segment_order__contiguous;
   return 1;
  }
 }
 if (render_swizzle) {
  if (bytes_per_element == 2) {
   *segment_order_horz = segment_order__contiguous;
   *segment_order_vert = segment_order__contiguous;
   return 1;
  }
  if (bytes_per_element == 4) {
   *segment_order_horz = segment_order__non_contiguous;
   *segment_order_vert = segment_order__contiguous;
   return 1;
  }
  if (bytes_per_element == 8) {
   *segment_order_horz = segment_order__contiguous;
   *segment_order_vert = segment_order__non_contiguous;
   return 1;
  }
 }
 if (display_swizzle && bytes_per_element == 8) {
  *segment_order_horz = segment_order__contiguous;
  *segment_order_vert = segment_order__non_contiguous;
  return 1;
 }

 return 0;
}
