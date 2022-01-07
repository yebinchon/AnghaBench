
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ilist {scalar_t__ head; } ;


 scalar_t__ INDEXER_NULL ;

__attribute__((used)) static bool l_empty(struct ilist *l)
{
 return l->head == INDEXER_NULL;
}
