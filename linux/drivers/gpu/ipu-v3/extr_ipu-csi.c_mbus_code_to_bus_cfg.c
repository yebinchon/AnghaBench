
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_csi_bus_config {void* data_width; void* mipi_dt; void* data_fmt; } ;
typedef enum v4l2_mbus_type { ____Placeholder_v4l2_mbus_type } v4l2_mbus_type ;


 void* CSI_SENS_CONF_DATA_FMT_BAYER ;
 void* CSI_SENS_CONF_DATA_FMT_JPEG ;
 void* CSI_SENS_CONF_DATA_FMT_RGB444 ;
 void* CSI_SENS_CONF_DATA_FMT_RGB555 ;
 void* CSI_SENS_CONF_DATA_FMT_RGB565 ;
 void* CSI_SENS_CONF_DATA_FMT_RGB_YUV444 ;
 void* CSI_SENS_CONF_DATA_FMT_YUV422_UYVY ;
 void* CSI_SENS_CONF_DATA_FMT_YUV422_YUYV ;
 int EINVAL ;
 void* IPU_CSI_DATA_WIDTH_10 ;
 void* IPU_CSI_DATA_WIDTH_12 ;
 void* IPU_CSI_DATA_WIDTH_16 ;
 void* IPU_CSI_DATA_WIDTH_8 ;
 void* MIPI_DT_RAW10 ;
 void* MIPI_DT_RAW12 ;
 void* MIPI_DT_RAW8 ;
 void* MIPI_DT_RGB444 ;
 void* MIPI_DT_RGB555 ;
 void* MIPI_DT_RGB565 ;
 void* MIPI_DT_RGB888 ;
 void* MIPI_DT_YUV422 ;
 int V4L2_MBUS_CSI2_DPHY ;

__attribute__((used)) static int mbus_code_to_bus_cfg(struct ipu_csi_bus_config *cfg, u32 mbus_code,
    enum v4l2_mbus_type mbus_type)
{
 switch (mbus_code) {
 case 165:
 case 164:
 case 157:
 case 156:
  if (mbus_type == V4L2_MBUS_CSI2_DPHY)
   cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_RGB565;
  else
   cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_RGB565;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 161:
 case 160:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_RGB444;
  cfg->mipi_dt = MIPI_DT_RGB444;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 159:
 case 158:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_RGB555;
  cfg->mipi_dt = MIPI_DT_RGB555;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 155:
 case 163:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_RGB_YUV444;
  cfg->mipi_dt = MIPI_DT_RGB888;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 133:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_YUV422_UYVY;
  cfg->mipi_dt = MIPI_DT_YUV422;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 128:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_YUV422_YUYV;
  cfg->mipi_dt = MIPI_DT_YUV422;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 134:
 case 129:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_YUV422;
  cfg->data_width = IPU_CSI_DATA_WIDTH_16;
  break;
 case 147:
 case 143:
 case 139:
 case 135:
 case 130:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_RAW8;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 149:
 case 145:
 case 141:
 case 137:
 case 153:
 case 152:
 case 151:
 case 150:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_RAW10;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 case 154:
 case 146:
 case 142:
 case 138:
 case 132:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_RAW10;
  cfg->data_width = IPU_CSI_DATA_WIDTH_10;
  break;
 case 148:
 case 144:
 case 140:
 case 136:
 case 131:
  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_BAYER;
  cfg->mipi_dt = MIPI_DT_RAW12;
  cfg->data_width = IPU_CSI_DATA_WIDTH_12;
  break;
 case 162:

  cfg->data_fmt = CSI_SENS_CONF_DATA_FMT_JPEG;
  cfg->mipi_dt = MIPI_DT_RAW8;
  cfg->data_width = IPU_CSI_DATA_WIDTH_8;
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
