
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fw_cdev_start_iso {scalar_t__ handle; int tags; int sync; int cycle; } ;
union ioctl_arg {struct fw_cdev_start_iso start_iso; } ;
struct client {TYPE_1__* iso_context; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 int BUILD_BUG_ON (int) ;
 int EINVAL ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_MATCH_ALL_TAGS ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_MATCH_TAG0 ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_MATCH_TAG1 ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_MATCH_TAG2 ;
 scalar_t__ FW_CDEV_ISO_CONTEXT_MATCH_TAG3 ;
 scalar_t__ FW_ISO_CONTEXT_MATCH_ALL_TAGS ;
 scalar_t__ FW_ISO_CONTEXT_MATCH_TAG0 ;
 scalar_t__ FW_ISO_CONTEXT_MATCH_TAG1 ;
 scalar_t__ FW_ISO_CONTEXT_MATCH_TAG2 ;
 scalar_t__ FW_ISO_CONTEXT_MATCH_TAG3 ;
 scalar_t__ FW_ISO_CONTEXT_RECEIVE ;
 int fw_iso_context_start (TYPE_1__*,int ,int,int) ;

__attribute__((used)) static int ioctl_start_iso(struct client *client, union ioctl_arg *arg)
{
 struct fw_cdev_start_iso *a = &arg->start_iso;

 BUILD_BUG_ON(
     FW_CDEV_ISO_CONTEXT_MATCH_TAG0 != FW_ISO_CONTEXT_MATCH_TAG0 ||
     FW_CDEV_ISO_CONTEXT_MATCH_TAG1 != FW_ISO_CONTEXT_MATCH_TAG1 ||
     FW_CDEV_ISO_CONTEXT_MATCH_TAG2 != FW_ISO_CONTEXT_MATCH_TAG2 ||
     FW_CDEV_ISO_CONTEXT_MATCH_TAG3 != FW_ISO_CONTEXT_MATCH_TAG3 ||
     FW_CDEV_ISO_CONTEXT_MATCH_ALL_TAGS != FW_ISO_CONTEXT_MATCH_ALL_TAGS);

 if (client->iso_context == ((void*)0) || a->handle != 0)
  return -EINVAL;

 if (client->iso_context->type == FW_ISO_CONTEXT_RECEIVE &&
     (a->tags == 0 || a->tags > 15 || a->sync > 15))
  return -EINVAL;

 return fw_iso_context_start(client->iso_context,
        a->cycle, a->sync, a->tags);
}
