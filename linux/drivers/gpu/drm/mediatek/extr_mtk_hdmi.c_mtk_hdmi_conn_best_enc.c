
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_encoder* encoder; } ;
struct mtk_hdmi {TYPE_1__ bridge; } ;
struct drm_encoder {int dummy; } ;
struct drm_connector {int dummy; } ;


 struct mtk_hdmi* hdmi_ctx_from_conn (struct drm_connector*) ;

__attribute__((used)) static struct drm_encoder *mtk_hdmi_conn_best_enc(struct drm_connector *conn)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);

 return hdmi->bridge.encoder;
}
