
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
__attribute__((used)) static const char *cx2341x_get_name(u32 id)
{
 switch (id) {
 case 130:
  return "Spatial Filter Mode";
 case 131:
  return "Spatial Filter";
 case 133:
  return "Spatial Luma Filter Type";
 case 136:
  return "Spatial Chroma Filter Type";
 case 128:
  return "Temporal Filter Mode";
 case 129:
  return "Temporal Filter";
 case 132:
  return "Median Filter Type";
 case 134:
  return "Median Luma Filter Maximum";
 case 135:
  return "Median Luma Filter Minimum";
 case 137:
  return "Median Chroma Filter Maximum";
 case 138:
  return "Median Chroma Filter Minimum";
 case 139:
  return "Insert Navigation Packets";
 }
 return ((void*)0);
}
