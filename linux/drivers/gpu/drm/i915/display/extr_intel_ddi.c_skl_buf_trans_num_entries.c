
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum port { ____Placeholder_port } port ;


 int PORT_A ;
 int PORT_E ;
 int min (int,int) ;

__attribute__((used)) static int skl_buf_trans_num_entries(enum port port, int n_entries)
{

 if (port == PORT_A || port == PORT_E)
  return min(n_entries, 10);
 else
  return min(n_entries, 9);
}
