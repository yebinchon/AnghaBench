
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_hdmi {int cec_dev; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (struct drm_connector*) ;
 struct mtk_hdmi* hdmi_ctx_from_conn (struct drm_connector*) ;
 int mtk_cec_set_hpd_event (int ,int *,int *) ;

__attribute__((used)) static void hdmi_conn_destroy(struct drm_connector *conn)
{
 struct mtk_hdmi *hdmi = hdmi_ctx_from_conn(conn);

 mtk_cec_set_hpd_event(hdmi->cec_dev, ((void*)0), ((void*)0));

 drm_connector_cleanup(conn);
}
