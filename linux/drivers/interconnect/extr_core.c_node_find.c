
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_node {int dummy; } ;


 int icc_idr ;
 struct icc_node* idr_find (int *,int const) ;

__attribute__((used)) static struct icc_node *node_find(const int id)
{
 return idr_find(&icc_idr, id);
}
