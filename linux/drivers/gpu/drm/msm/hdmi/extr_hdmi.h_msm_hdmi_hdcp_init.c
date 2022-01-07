
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdmi_hdcp_ctrl {int dummy; } ;
struct hdmi {int dummy; } ;


 int ENXIO ;
 struct hdmi_hdcp_ctrl* ERR_PTR (int ) ;

__attribute__((used)) static inline struct hdmi_hdcp_ctrl *msm_hdmi_hdcp_init(struct hdmi *hdmi)
{
 return ERR_PTR(-ENXIO);
}
