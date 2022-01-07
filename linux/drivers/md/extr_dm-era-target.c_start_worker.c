
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct era {int suspended; } ;


 int atomic_set (int *,int ) ;

__attribute__((used)) static void start_worker(struct era *era)
{
 atomic_set(&era->suspended, 0);
}
