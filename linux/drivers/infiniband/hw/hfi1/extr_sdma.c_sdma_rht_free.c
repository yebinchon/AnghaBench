
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdma_rht_node {struct sdma_rht_node** map; } ;


 int HFI1_MAX_VLS_SUPPORTED ;
 int kfree (struct sdma_rht_node*) ;

__attribute__((used)) static void sdma_rht_free(void *ptr, void *arg)
{
 struct sdma_rht_node *rht_node = ptr;
 int i;

 for (i = 0; i < HFI1_MAX_VLS_SUPPORTED; i++)
  kfree(rht_node->map[i]);

 kfree(rht_node);
}
