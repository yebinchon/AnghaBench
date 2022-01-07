
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pasid_entry {int * val; } ;


 int WRITE_ONCE (int ,int ) ;

__attribute__((used)) static inline void pasid_clear_entry(struct pasid_entry *pe)
{
 WRITE_ONCE(pe->val[0], 0);
 WRITE_ONCE(pe->val[1], 0);
 WRITE_ONCE(pe->val[2], 0);
 WRITE_ONCE(pe->val[3], 0);
 WRITE_ONCE(pe->val[4], 0);
 WRITE_ONCE(pe->val[5], 0);
 WRITE_ONCE(pe->val[6], 0);
 WRITE_ONCE(pe->val[7], 0);
}
