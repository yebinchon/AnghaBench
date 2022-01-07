
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv0900_internal {int i2c_addr; int i2c_adap; } ;
struct stv0900_inode {struct stv0900_inode* next_inode; } ;


 struct stv0900_inode* find_inode (int ,int ) ;
 int kfree (struct stv0900_inode*) ;
 struct stv0900_inode* stv0900_first_inode ;

__attribute__((used)) static void remove_inode(struct stv0900_internal *internal)
{
 struct stv0900_inode *prev_node = stv0900_first_inode;
 struct stv0900_inode *del_node = find_inode(internal->i2c_adap,
      internal->i2c_addr);

 if (del_node != ((void*)0)) {
  if (del_node == stv0900_first_inode) {
   stv0900_first_inode = del_node->next_inode;
  } else {
   while (prev_node->next_inode != del_node)
    prev_node = prev_node->next_inode;

   if (del_node->next_inode == ((void*)0))
    prev_node->next_inode = ((void*)0);
   else
    prev_node->next_inode =
     prev_node->next_inode->next_inode;
  }

  kfree(del_node);
 }
}
