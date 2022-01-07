
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct layer2 {int ** windowar; } ;


 int MAX_WINDOW ;
 int dev_kfree_skb (int *) ;

__attribute__((used)) static int
freewin(struct layer2 *l2)
{
 int i, cnt = 0;

 for (i = 0; i < MAX_WINDOW; i++) {
  if (l2->windowar[i]) {
   cnt++;
   dev_kfree_skb(l2->windowar[i]);
   l2->windowar[i] = ((void*)0);
  }
 }
 return cnt;
}
