
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_link_m_n {scalar_t__ tu; int link_n; int link_m; int gmch_n; int gmch_m; } ;


 scalar_t__ intel_compare_m_n (int ,int ,int ,int ,int) ;

__attribute__((used)) static bool
intel_compare_link_m_n(const struct intel_link_m_n *m_n,
         const struct intel_link_m_n *m2_n2,
         bool exact)
{
 return m_n->tu == m2_n2->tu &&
  intel_compare_m_n(m_n->gmch_m, m_n->gmch_n,
      m2_n2->gmch_m, m2_n2->gmch_n, exact) &&
  intel_compare_m_n(m_n->link_m, m_n->link_n,
      m2_n2->link_m, m2_n2->link_n, exact);
}
