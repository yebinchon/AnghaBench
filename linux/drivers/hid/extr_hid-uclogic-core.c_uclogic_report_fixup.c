
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uclogic_drvdata {unsigned int desc_size; int * desc_ptr; } ;
struct hid_device {int dummy; } ;
typedef int __u8 ;


 struct uclogic_drvdata* hid_get_drvdata (struct hid_device*) ;

__attribute__((used)) static __u8 *uclogic_report_fixup(struct hid_device *hdev, __u8 *rdesc,
     unsigned int *rsize)
{
 struct uclogic_drvdata *drvdata = hid_get_drvdata(hdev);

 if (drvdata->desc_ptr != ((void*)0)) {
  rdesc = drvdata->desc_ptr;
  *rsize = drvdata->desc_size;
 }
 return rdesc;
}
