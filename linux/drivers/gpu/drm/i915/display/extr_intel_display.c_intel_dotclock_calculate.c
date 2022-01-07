
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_link_m_n {int link_n; int link_m; } ;


 int div_u64 (int ,int ) ;
 int mul_u32_u32 (int ,int) ;

int intel_dotclock_calculate(int link_freq,
        const struct intel_link_m_n *m_n)
{
 if (!m_n->link_n)
  return 0;

 return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
}
