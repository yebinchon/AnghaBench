
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ENOENT ;
 int * search_leaf (int const*,int) ;
 int textual_leaf_to_string (int const*,char*,size_t) ;

int fw_csr_string(const u32 *directory, int key, char *buf, size_t size)
{
 const u32 *leaf = search_leaf(directory, key);
 if (!leaf)
  return -ENOENT;

 return textual_leaf_to_string(leaf, buf, size);
}
