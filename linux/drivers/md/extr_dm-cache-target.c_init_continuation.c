
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct continuation {scalar_t__ input; int ws; } ;


 int INIT_WORK (int *,void (*) (struct work_struct*)) ;

__attribute__((used)) static inline void init_continuation(struct continuation *k,
         void (*fn)(struct work_struct *))
{
 INIT_WORK(&k->ws, fn);
 k->input = 0;
}
