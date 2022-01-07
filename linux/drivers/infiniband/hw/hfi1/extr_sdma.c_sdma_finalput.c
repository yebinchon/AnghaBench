
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_state {int comp; } ;


 int sdma_put (struct sdma_state*) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void sdma_finalput(struct sdma_state *ss)
{
 sdma_put(ss);
 wait_for_completion(&ss->comp);
}
