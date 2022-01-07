
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor {int dummy; } ;


 int TO_DCE112_COMPRESSOR (struct compressor*) ;
 int kfree (int ) ;

void dce112_compressor_destroy(struct compressor **compressor)
{
 kfree(TO_DCE112_COMPRESSOR(*compressor));
 *compressor = ((void*)0);
}
