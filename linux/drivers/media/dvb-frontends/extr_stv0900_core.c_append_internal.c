
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int dummy; } ;
struct stv0900_inode {struct stv0900_inode* next_inode; struct stv0900_internal* internal; } ;


 int GFP_KERNEL ;
 void* kmalloc (int,int ) ;
 struct stv0900_inode* stv0900_first_inode ;

__attribute__((used)) static struct stv0900_inode *append_internal(struct stv0900_internal *internal)
{
 struct stv0900_inode *new_node = stv0900_first_inode;

 if (new_node == ((void*)0)) {
  new_node = kmalloc(sizeof(struct stv0900_inode), GFP_KERNEL);
  stv0900_first_inode = new_node;
 } else {
  while (new_node->next_inode != ((void*)0))
   new_node = new_node->next_inode;

  new_node->next_inode = kmalloc(sizeof(struct stv0900_inode),
        GFP_KERNEL);
  if (new_node->next_inode != ((void*)0))
   new_node = new_node->next_inode;
  else
   new_node = ((void*)0);
 }

 if (new_node != ((void*)0)) {
  new_node->internal = internal;
  new_node->next_inode = ((void*)0);
 }

 return new_node;
}
