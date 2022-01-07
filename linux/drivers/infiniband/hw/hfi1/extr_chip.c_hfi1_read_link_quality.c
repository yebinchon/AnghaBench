
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {TYPE_1__* pport; } ;
struct TYPE_2__ {int host_link_state; } ;


 int GENERAL_CONFIG ;
 int HLS_UP ;
 int LINK_QUALITY_INFO ;
 int LINK_QUALITY_MASK ;
 int LINK_QUALITY_SHIFT ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

void hfi1_read_link_quality(struct hfi1_devdata *dd, u8 *link_quality)
{
 u32 frame;
 int ret;

 *link_quality = 0;
 if (dd->pport->host_link_state & HLS_UP) {
  ret = read_8051_config(dd, LINK_QUALITY_INFO, GENERAL_CONFIG,
           &frame);
  if (ret == 0)
   *link_quality = (frame >> LINK_QUALITY_SHIFT)
      & LINK_QUALITY_MASK;
 }
}
