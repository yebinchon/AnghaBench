
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppa_addr {scalar_t__ ppa; } ;



__attribute__((used)) static inline bool pblk_ppa_comp(struct ppa_addr lppa, struct ppa_addr rppa)
{
 return (lppa.ppa == rppa.ppa);
}
