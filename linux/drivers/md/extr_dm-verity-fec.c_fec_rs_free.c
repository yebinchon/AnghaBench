
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_control {int dummy; } ;


 int free_rs (struct rs_control*) ;

__attribute__((used)) static void fec_rs_free(void *element, void *pool_data)
{
 struct rs_control *rs = (struct rs_control *)element;

 if (rs)
  free_rs(rs);
}
