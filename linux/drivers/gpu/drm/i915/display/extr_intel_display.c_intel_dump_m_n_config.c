
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_link_m_n {int tu; int link_n; int link_m; int gmch_n; int gmch_m; } ;
struct intel_crtc_state {int dummy; } ;


 int DRM_DEBUG_KMS (char*,char const*,unsigned int,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
intel_dump_m_n_config(const struct intel_crtc_state *pipe_config,
        const char *id, unsigned int lane_count,
        const struct intel_link_m_n *m_n)
{
 DRM_DEBUG_KMS("%s: lanes: %i; gmch_m: %u, gmch_n: %u, link_m: %u, link_n: %u, tu: %u\n",
        id, lane_count,
        m_n->gmch_m, m_n->gmch_n,
        m_n->link_m, m_n->link_n, m_n->tu);
}
