
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_bridge {int dummy; } ;
struct anx78xx {int * map; } ;


 size_t I2C_IDX_TX_P2 ;
 int SP_AUDIO_PD ;
 int SP_HDCP_PD ;
 int SP_LINK_PD ;
 int SP_POWERDOWN_CTRL_REG ;
 int SP_VIDEO_PD ;
 int anx78xx_set_bits (int ,int ,int) ;
 struct anx78xx* bridge_to_anx78xx (struct drm_bridge*) ;

__attribute__((used)) static void anx78xx_bridge_disable(struct drm_bridge *bridge)
{
 struct anx78xx *anx78xx = bridge_to_anx78xx(bridge);


 anx78xx_set_bits(anx78xx->map[I2C_IDX_TX_P2], SP_POWERDOWN_CTRL_REG,
    SP_HDCP_PD | SP_AUDIO_PD | SP_VIDEO_PD | SP_LINK_PD);
}
