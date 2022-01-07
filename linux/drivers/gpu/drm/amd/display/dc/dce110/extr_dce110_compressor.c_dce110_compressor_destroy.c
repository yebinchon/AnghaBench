
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor {int dummy; } ;


 int TO_DCE110_COMPRESSOR (struct compressor*) ;
 int kfree (int ) ;

void dce110_compressor_destroy(struct compressor **compressor)
{
 kfree(TO_DCE110_COMPRESSOR(*compressor));
 *compressor = ((void*)0);
}
