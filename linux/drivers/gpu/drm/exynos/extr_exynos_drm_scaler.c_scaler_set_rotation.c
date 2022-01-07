
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct scaler_context {int dummy; } ;


 unsigned int DRM_MODE_REFLECT_X ;
 unsigned int DRM_MODE_REFLECT_Y ;
 unsigned int DRM_MODE_ROTATE_180 ;
 unsigned int DRM_MODE_ROTATE_270 ;
 unsigned int DRM_MODE_ROTATE_90 ;
 int SCALER_ROT_CFG ;
 int SCALER_ROT_CFG_FLIP_X_EN ;
 int SCALER_ROT_CFG_FLIP_Y_EN ;
 int SCALER_ROT_CFG_SET_ROTMODE (int ) ;
 int SCALER_ROT_MODE_180 ;
 int SCALER_ROT_MODE_270 ;
 int SCALER_ROT_MODE_90 ;
 int scaler_write (int ,int ) ;

__attribute__((used)) static inline void scaler_set_rotation(struct scaler_context *scaler,
 unsigned int rotation)
{
 u32 val = 0;

 if (rotation & DRM_MODE_ROTATE_90)
  val |= SCALER_ROT_CFG_SET_ROTMODE(SCALER_ROT_MODE_90);
 else if (rotation & DRM_MODE_ROTATE_180)
  val |= SCALER_ROT_CFG_SET_ROTMODE(SCALER_ROT_MODE_180);
 else if (rotation & DRM_MODE_ROTATE_270)
  val |= SCALER_ROT_CFG_SET_ROTMODE(SCALER_ROT_MODE_270);
 if (rotation & DRM_MODE_REFLECT_X)
  val |= SCALER_ROT_CFG_FLIP_X_EN;
 if (rotation & DRM_MODE_REFLECT_Y)
  val |= SCALER_ROT_CFG_FLIP_Y_EN;
 scaler_write(val, SCALER_ROT_CFG);
}
