
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct hid_report {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ hid_report_len (struct hid_report*) ;
 int * kmalloc (scalar_t__,int ) ;

u8 *hid_alloc_report_buf(struct hid_report *report, gfp_t flags)
{





 u32 len = hid_report_len(report) + 7;

 return kmalloc(len, flags);
}
