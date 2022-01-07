
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_state {int kref; } ;


 int kref_put (int *,int ) ;
 int sdma_complete ;

__attribute__((used)) static void sdma_put(struct sdma_state *ss)
{
 kref_put(&ss->kref, sdma_complete);
}
