
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int out_pixel_fmt; int in_pixel_fmt; int out_width; int in_width; int out_height; int in_height; } ;
union ipu_channel_param {TYPE_1__ video; } ;
typedef int uint32_t ;
struct ipu {int dev; } ;
typedef enum ipu_color_space { ____Placeholder_ipu_color_space } ipu_color_space ;


 int EOPNOTSUPP ;
 int IC_CONF ;
 int IC_CONF_RWS_EN ;
 int IC_PRP_ENC_RSC ;
 int calc_resize_coeffs (int ,int ,int*,int*) ;
 int dev_err (int ,char*) ;
 int format_to_colorspace (int ) ;
 int idmac_read_icreg (struct ipu*,int ) ;
 int idmac_write_icreg (struct ipu*,int,int ) ;

__attribute__((used)) static int ipu_ic_init_prpenc(struct ipu *ipu,
         union ipu_channel_param *params, bool src_is_csi)
{
 uint32_t reg, ic_conf;
 uint32_t downsize_coeff, resize_coeff;
 enum ipu_color_space in_fmt, out_fmt;


 calc_resize_coeffs(params->video.in_height,
       params->video.out_height,
       &resize_coeff, &downsize_coeff);
 reg = (downsize_coeff << 30) | (resize_coeff << 16);


 calc_resize_coeffs(params->video.in_width,
       params->video.out_width,
       &resize_coeff, &downsize_coeff);
 reg |= (downsize_coeff << 14) | resize_coeff;


 in_fmt = format_to_colorspace(params->video.in_pixel_fmt);
 out_fmt = format_to_colorspace(params->video.out_pixel_fmt);





 if (in_fmt != out_fmt) {
  dev_err(ipu->dev, "Colourspace conversion unsupported!\n");
  return -EOPNOTSUPP;
 }

 idmac_write_icreg(ipu, reg, IC_PRP_ENC_RSC);

 ic_conf = idmac_read_icreg(ipu, IC_CONF);

 if (src_is_csi)
  ic_conf &= ~IC_CONF_RWS_EN;
 else
  ic_conf |= IC_CONF_RWS_EN;

 idmac_write_icreg(ipu, ic_conf, IC_CONF);

 return 0;
}
