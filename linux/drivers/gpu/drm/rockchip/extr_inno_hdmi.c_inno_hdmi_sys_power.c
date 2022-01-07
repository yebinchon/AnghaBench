
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inno_hdmi {int dummy; } ;


 int HDMI_SYS_CTRL ;
 int hdmi_modb (struct inno_hdmi*,int ,int ,int ) ;
 int m_POWER ;
 int v_PWR_OFF ;
 int v_PWR_ON ;

__attribute__((used)) static void inno_hdmi_sys_power(struct inno_hdmi *hdmi, bool enable)
{
 if (enable)
  hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_ON);
 else
  hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
}
