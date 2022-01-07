
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void request_mgr_complete(struct device *dev, void *dx_compl_h,
     int dummy)
{
 struct completion *this_compl = dx_compl_h;

 complete(this_compl);
}
