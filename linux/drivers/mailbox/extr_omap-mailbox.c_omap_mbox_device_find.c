
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_mbox_device {struct omap_mbox** mboxes; } ;
struct omap_mbox {int name; } ;


 int strcmp (int ,char const*) ;

__attribute__((used)) static struct omap_mbox *omap_mbox_device_find(struct omap_mbox_device *mdev,
            const char *mbox_name)
{
 struct omap_mbox *_mbox, *mbox = ((void*)0);
 struct omap_mbox **mboxes = mdev->mboxes;
 int i;

 if (!mboxes)
  return ((void*)0);

 for (i = 0; (_mbox = mboxes[i]); i++) {
  if (!strcmp(_mbox->name, mbox_name)) {
   mbox = _mbox;
   break;
  }
 }
 return mbox;
}
