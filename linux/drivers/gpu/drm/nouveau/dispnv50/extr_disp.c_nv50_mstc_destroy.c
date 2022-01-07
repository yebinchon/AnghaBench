
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_mstc {int port; int connector; } ;
struct drm_connector {int dummy; } ;


 int drm_connector_cleanup (int *) ;
 int drm_dp_mst_put_port_malloc (int ) ;
 int kfree (struct nv50_mstc*) ;
 struct nv50_mstc* nv50_mstc (struct drm_connector*) ;

__attribute__((used)) static void
nv50_mstc_destroy(struct drm_connector *connector)
{
 struct nv50_mstc *mstc = nv50_mstc(connector);

 drm_connector_cleanup(&mstc->connector);
 drm_dp_mst_put_port_malloc(mstc->port);

 kfree(mstc);
}
