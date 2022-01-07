
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt_usages {int list; int confidence_state; void* inrange_state; void* tip_state; void* contactid; void* a; void* h; void* w; void* p; void* cy; void* cx; void* y; void* x; } ;
struct mt_application {int mt_usages; } ;
struct hid_device {int dev; } ;


 void* DEFAULT_FALSE ;
 int DEFAULT_TRUE ;
 void* DEFAULT_ZERO ;
 int GFP_KERNEL ;
 struct mt_usages* devm_kzalloc (int *,int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct mt_usages *mt_allocate_usage(struct hid_device *hdev,
        struct mt_application *application)
{
 struct mt_usages *usage;

 usage = devm_kzalloc(&hdev->dev, sizeof(*usage), GFP_KERNEL);
 if (!usage)
  return ((void*)0);


 usage->x = DEFAULT_ZERO;
 usage->y = DEFAULT_ZERO;
 usage->cx = DEFAULT_ZERO;
 usage->cy = DEFAULT_ZERO;
 usage->p = DEFAULT_ZERO;
 usage->w = DEFAULT_ZERO;
 usage->h = DEFAULT_ZERO;
 usage->a = DEFAULT_ZERO;
 usage->contactid = DEFAULT_ZERO;
 usage->tip_state = DEFAULT_FALSE;
 usage->inrange_state = DEFAULT_FALSE;
 usage->confidence_state = DEFAULT_TRUE;

 list_add_tail(&usage->list, &application->mt_usages);

 return usage;
}
