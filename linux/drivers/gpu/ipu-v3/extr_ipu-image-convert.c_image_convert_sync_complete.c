
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_image_convert_run {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void image_convert_sync_complete(struct ipu_image_convert_run *run,
     void *data)
{
 struct completion *comp = data;

 complete(comp);
}
