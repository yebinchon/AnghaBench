
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nx842_coproc {int chip_id; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int nx842_coprocs ;

__attribute__((used)) static inline void nx842_add_coprocs_list(struct nx842_coproc *coproc,
     int chipid)
{
 coproc->chip_id = chipid;
 INIT_LIST_HEAD(&coproc->list);
 list_add(&coproc->list, &nx842_coprocs);
}
