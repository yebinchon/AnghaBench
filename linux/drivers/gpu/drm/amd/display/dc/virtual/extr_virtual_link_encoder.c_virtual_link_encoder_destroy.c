
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link_encoder {int dummy; } ;


 int kfree (struct link_encoder*) ;

__attribute__((used)) static void virtual_link_encoder_destroy(struct link_encoder **enc)
{
 kfree(*enc);
 *enc = ((void*)0);
}
