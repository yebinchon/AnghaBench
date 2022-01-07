
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_sdma_state {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void sdma_get(struct qib_sdma_state *ss)
{
 kref_get(&ss->kref);
}
