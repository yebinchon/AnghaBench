
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_device {int dummy; } ;
struct mt_application {int quirks; int have_contact_count; } ;


 int MT_QUIRK_CONTACT_CNT_ACCURATE ;

__attribute__((used)) static void mt_post_parse(struct mt_device *td, struct mt_application *app)
{
 if (!app->have_contact_count)
  app->quirks &= ~MT_QUIRK_CONTACT_CNT_ACCURATE;
}
