
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tiler_block {int area; } ;


 int fill (int *,int *,int ,int ,int) ;

int tiler_unpin(struct tiler_block *block)
{
 return fill(&block->area, ((void*)0), 0, 0, 0);
}
