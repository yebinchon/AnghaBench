
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_device {int dummy; } ;
struct mt_application {int quirks; int mt_usages; } ;
typedef int __s32 ;


 int MT_QUIRK_ALWAYS_VALID ;
 int MT_QUIRK_CONTACT_CNT_ACCURATE ;
 int MT_QUIRK_NOT_SEEN_MEANS_UP ;
 int MT_QUIRK_VALID_IS_CONFIDENCE ;
 int MT_QUIRK_VALID_IS_INRANGE ;
 scalar_t__ list_is_singular (int *) ;

__attribute__((used)) static void mt_post_parse_default_settings(struct mt_device *td,
        struct mt_application *app)
{
 __s32 quirks = app->quirks;


 if (list_is_singular(&app->mt_usages)) {
  quirks |= MT_QUIRK_ALWAYS_VALID;
  quirks &= ~MT_QUIRK_NOT_SEEN_MEANS_UP;
  quirks &= ~MT_QUIRK_VALID_IS_INRANGE;
  quirks &= ~MT_QUIRK_VALID_IS_CONFIDENCE;
  quirks &= ~MT_QUIRK_CONTACT_CNT_ACCURATE;
 }

 app->quirks = quirks;
}
