
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ DCA_TAG_MAP_VALID ;

__attribute__((used)) static inline int dca3_tag_map_invalid(u8 *tag_map)
{
 return ((tag_map[0] == DCA_TAG_MAP_VALID) &&
  (tag_map[1] == DCA_TAG_MAP_VALID) &&
  (tag_map[2] == DCA_TAG_MAP_VALID) &&
  (tag_map[3] == DCA_TAG_MAP_VALID) &&
  (tag_map[4] == DCA_TAG_MAP_VALID));
}
