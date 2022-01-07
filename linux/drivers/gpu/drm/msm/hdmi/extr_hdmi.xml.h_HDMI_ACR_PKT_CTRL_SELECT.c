
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef enum hdmi_acr_cts { ____Placeholder_hdmi_acr_cts } hdmi_acr_cts ;


 int HDMI_ACR_PKT_CTRL_SELECT__MASK ;
 int HDMI_ACR_PKT_CTRL_SELECT__SHIFT ;

__attribute__((used)) static inline uint32_t HDMI_ACR_PKT_CTRL_SELECT(enum hdmi_acr_cts val)
{
 return ((val) << HDMI_ACR_PKT_CTRL_SELECT__SHIFT) & HDMI_ACR_PKT_CTRL_SELECT__MASK;
}
