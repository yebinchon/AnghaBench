
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * table_com ;
 int * table_dec ;
 int vfree (int *) ;

void
l1oip_4bit_free(void)
{
 vfree(table_dec);
 vfree(table_com);
 table_com = ((void*)0);
 table_dec = ((void*)0);
}
