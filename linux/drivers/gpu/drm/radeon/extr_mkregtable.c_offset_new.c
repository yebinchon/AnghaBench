
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct offset {unsigned int offset; int list; } ;


 int INIT_LIST_HEAD (int *) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static struct offset *offset_new(unsigned o)
{
 struct offset *offset;

 offset = (struct offset *)malloc(sizeof(struct offset));
 if (offset) {
  INIT_LIST_HEAD(&offset->list);
  offset->offset = o;
 }
 return offset;
}
