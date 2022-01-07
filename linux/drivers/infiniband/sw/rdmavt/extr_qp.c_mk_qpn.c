
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qpn_table {struct rvt_qpn_map* map; } ;
struct rvt_qpn_map {int dummy; } ;


 int RVT_BITS_PER_PAGE ;

__attribute__((used)) static inline unsigned mk_qpn(struct rvt_qpn_table *qpt,
         struct rvt_qpn_map *map, unsigned off)
{
 return (map - qpt->map) * RVT_BITS_PER_PAGE + off;
}
