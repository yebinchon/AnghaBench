
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g2d_data {int dev; } ;
typedef enum g2d_reg_type { ____Placeholder_g2d_reg_type } g2d_reg_type ;


 int DRM_DEV_ERROR (int ,char*,int) ;
 int REG_TYPE_DST ;
 int REG_TYPE_DST_PLANE2 ;
 int REG_TYPE_MSK ;
 int REG_TYPE_NONE ;
 int REG_TYPE_PAT ;
 int REG_TYPE_SRC ;
 int REG_TYPE_SRC_PLANE2 ;

__attribute__((used)) static enum g2d_reg_type g2d_get_reg_type(struct g2d_data *g2d, int reg_offset)
{
 enum g2d_reg_type reg_type;

 switch (reg_offset) {
 case 133:
 case 128:
 case 132:
 case 131:
 case 129:
  reg_type = REG_TYPE_SRC;
  break;
 case 130:
  reg_type = REG_TYPE_SRC_PLANE2;
  break;
 case 141:
 case 136:
 case 140:
 case 139:
 case 137:
  reg_type = REG_TYPE_DST;
  break;
 case 138:
  reg_type = REG_TYPE_DST_PLANE2;
  break;
 case 134:
  reg_type = REG_TYPE_PAT;
  break;
 case 135:
  reg_type = REG_TYPE_MSK;
  break;
 default:
  reg_type = REG_TYPE_NONE;
  DRM_DEV_ERROR(g2d->dev, "Unknown register offset![%d]\n",
         reg_offset);
  break;
 }

 return reg_type;
}
