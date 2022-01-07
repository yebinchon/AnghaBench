
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUILD_BUG_ON (int) ;
 scalar_t__ DATA_LINK_M_N_MASK ;
 scalar_t__ INT_MAX ;
 int intel_fuzzy_clock_check (unsigned int,unsigned int) ;

__attribute__((used)) static bool
intel_compare_m_n(unsigned int m, unsigned int n,
    unsigned int m2, unsigned int n2,
    bool exact)
{
 if (m == m2 && n == n2)
  return 1;

 if (exact || !m || !n || !m2 || !n2)
  return 0;

 BUILD_BUG_ON(DATA_LINK_M_N_MASK > INT_MAX);

 if (n > n2) {
  while (n > n2) {
   m2 <<= 1;
   n2 <<= 1;
  }
 } else if (n < n2) {
  while (n < n2) {
   m <<= 1;
   n <<= 1;
  }
 }

 if (n != n2)
  return 0;

 return intel_fuzzy_clock_check(m, m2);
}
