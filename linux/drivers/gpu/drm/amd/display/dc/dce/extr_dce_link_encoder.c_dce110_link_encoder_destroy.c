
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;


 int TO_DCE110_LINK_ENC (struct link_encoder*) ;
 int kfree (int ) ;

void dce110_link_encoder_destroy(struct link_encoder **enc)
{
 kfree(TO_DCE110_LINK_ENC(*enc));
 *enc = ((void*)0);
}
