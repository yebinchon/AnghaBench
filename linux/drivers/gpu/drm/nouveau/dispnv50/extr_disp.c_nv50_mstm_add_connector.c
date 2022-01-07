
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_mstm {int dummy; } ;
struct drm_connector {int dummy; } ;
struct nv50_mstc {struct drm_connector connector; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct drm_dp_mst_port {int dummy; } ;


 int nv50_mstc_new (struct nv50_mstm*,struct drm_dp_mst_port*,char const*,struct nv50_mstc**) ;
 struct nv50_mstm* nv50_mstm (struct drm_dp_mst_topology_mgr*) ;

__attribute__((used)) static struct drm_connector *
nv50_mstm_add_connector(struct drm_dp_mst_topology_mgr *mgr,
   struct drm_dp_mst_port *port, const char *path)
{
 struct nv50_mstm *mstm = nv50_mstm(mgr);
 struct nv50_mstc *mstc;
 int ret;

 ret = nv50_mstc_new(mstm, port, path, &mstc);
 if (ret)
  return ((void*)0);

 return &mstc->connector;
}
