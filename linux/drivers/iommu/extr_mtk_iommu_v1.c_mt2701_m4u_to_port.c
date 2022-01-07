
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* mt2701_m4u_in_larb ;
 int mt2701_m4u_to_larb (int) ;

__attribute__((used)) static inline int mt2701_m4u_to_port(int id)
{
 int larb = mt2701_m4u_to_larb(id);

 return id - mt2701_m4u_in_larb[larb];
}
