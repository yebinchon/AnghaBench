
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tasklet_struct {int count; } ;


 int atomic_dec_and_test (int *) ;

__attribute__((used)) static inline bool __tasklet_enable(struct tasklet_struct *t)
{
 return atomic_dec_and_test(&t->count);
}
