
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_data_info {scalar_t__ enc_in_format; scalar_t__ enc_out_format; scalar_t__ colorimetry; } ;
struct inno_hdmi {struct hdmi_data_info hdmi_data; } ;


 int AUTO_CSC_DISABLE ;
 int AUTO_CSC_ENABLE ;
 int C0_C2_CHANGE_DISABLE ;
 int CSC_ITU601_16_235_TO_RGB_0_255_8BIT ;
 int CSC_ITU709_16_235_TO_RGB_0_255_8BIT ;
 int CSC_RGB_0_255_TO_ITU601_16_235_8BIT ;
 int CSC_RGB_0_255_TO_ITU709_16_235_8BIT ;
 scalar_t__ HDMI_COLORIMETRY_ITU_601 ;
 scalar_t__ HDMI_COLORSPACE_RGB ;
 scalar_t__ HDMI_COLORSPACE_YUV444 ;
 int HDMI_VIDEO_CONTRL ;
 scalar_t__ HDMI_VIDEO_CONTRL1 ;
 scalar_t__ HDMI_VIDEO_CONTRL2 ;
 scalar_t__ HDMI_VIDEO_CONTRL3 ;
 scalar_t__ HDMI_VIDEO_CSC_COEF ;
 int VIDEO_INPUT_8BITS ;
 int VIDEO_INPUT_SDR_RGB444 ;
 int** coeff_csc ;
 int hdmi_modb (struct inno_hdmi*,int ,int,int) ;
 int hdmi_writeb (struct inno_hdmi*,scalar_t__,int) ;
 int m_VIDEO_AUTO_CSC ;
 int m_VIDEO_C0_C2_SWAP ;
 int v_COLOR_DEPTH_NOT_INDICATED (int) ;
 int v_CSC_DISABLE ;
 int v_CSC_ENABLE ;
 int v_DE_EXTERNAL ;
 int v_SOF_DISABLE ;
 int v_VIDEO_AUTO_CSC (int) ;
 int v_VIDEO_C0_C2_SWAP (int) ;
 int v_VIDEO_INPUT_BITS (int ) ;
 int v_VIDEO_INPUT_CSP (int ) ;
 int v_VIDEO_INPUT_FORMAT (int ) ;
 int v_VIDEO_OUTPUT_COLOR (int ) ;

__attribute__((used)) static int inno_hdmi_config_video_csc(struct inno_hdmi *hdmi)
{
 struct hdmi_data_info *data = &hdmi->hdmi_data;
 int c0_c2_change = 0;
 int csc_enable = 0;
 int csc_mode = 0;
 int auto_csc = 0;
 int value;
 int i;


 hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL1, v_DE_EXTERNAL |
      v_VIDEO_INPUT_FORMAT(VIDEO_INPUT_SDR_RGB444));


 value = v_VIDEO_INPUT_BITS(VIDEO_INPUT_8BITS) |
  v_VIDEO_OUTPUT_COLOR(0) |
  v_VIDEO_INPUT_CSP(0);
 hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL2, value);

 if (data->enc_in_format == data->enc_out_format) {
  if ((data->enc_in_format == HDMI_COLORSPACE_RGB) ||
      (data->enc_in_format >= HDMI_COLORSPACE_YUV444)) {
   value = v_SOF_DISABLE | v_COLOR_DEPTH_NOT_INDICATED(1);
   hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);

   hdmi_modb(hdmi, HDMI_VIDEO_CONTRL,
      m_VIDEO_AUTO_CSC | m_VIDEO_C0_C2_SWAP,
      v_VIDEO_AUTO_CSC(AUTO_CSC_DISABLE) |
      v_VIDEO_C0_C2_SWAP(C0_C2_CHANGE_DISABLE));
   return 0;
  }
 }

 if (data->colorimetry == HDMI_COLORIMETRY_ITU_601) {
  if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
      (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
   csc_mode = CSC_RGB_0_255_TO_ITU601_16_235_8BIT;
   auto_csc = AUTO_CSC_DISABLE;
   c0_c2_change = C0_C2_CHANGE_DISABLE;
   csc_enable = v_CSC_ENABLE;
  } else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
      (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
   csc_mode = CSC_ITU601_16_235_TO_RGB_0_255_8BIT;
   auto_csc = AUTO_CSC_ENABLE;
   c0_c2_change = C0_C2_CHANGE_DISABLE;
   csc_enable = v_CSC_DISABLE;
  }
 } else {
  if ((data->enc_in_format == HDMI_COLORSPACE_RGB) &&
      (data->enc_out_format == HDMI_COLORSPACE_YUV444)) {
   csc_mode = CSC_RGB_0_255_TO_ITU709_16_235_8BIT;
   auto_csc = AUTO_CSC_DISABLE;
   c0_c2_change = C0_C2_CHANGE_DISABLE;
   csc_enable = v_CSC_ENABLE;
  } else if ((data->enc_in_format == HDMI_COLORSPACE_YUV444) &&
      (data->enc_out_format == HDMI_COLORSPACE_RGB)) {
   csc_mode = CSC_ITU709_16_235_TO_RGB_0_255_8BIT;
   auto_csc = AUTO_CSC_ENABLE;
   c0_c2_change = C0_C2_CHANGE_DISABLE;
   csc_enable = v_CSC_DISABLE;
  }
 }

 for (i = 0; i < 24; i++)
  hdmi_writeb(hdmi, HDMI_VIDEO_CSC_COEF + i,
       coeff_csc[csc_mode][i]);

 value = v_SOF_DISABLE | csc_enable | v_COLOR_DEPTH_NOT_INDICATED(1);
 hdmi_writeb(hdmi, HDMI_VIDEO_CONTRL3, value);
 hdmi_modb(hdmi, HDMI_VIDEO_CONTRL, m_VIDEO_AUTO_CSC |
    m_VIDEO_C0_C2_SWAP, v_VIDEO_AUTO_CSC(auto_csc) |
    v_VIDEO_C0_C2_SWAP(c0_c2_change));

 return 0;
}
