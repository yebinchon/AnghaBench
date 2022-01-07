
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct hfi1_devdata {int dummy; } ;


 int DOWN_REMOTE_REASON_MASK ;
 int DOWN_REMOTE_REASON_SHIFT ;
 int GENERAL_CONFIG ;
 int LINK_QUALITY_INFO ;
 int read_8051_config (struct hfi1_devdata*,int ,int ,int*) ;

__attribute__((used)) static void read_planned_down_reason_code(struct hfi1_devdata *dd, u8 *pdrrc)
{
 u32 frame;

 read_8051_config(dd, LINK_QUALITY_INFO, GENERAL_CONFIG, &frame);
 *pdrrc = (frame >> DOWN_REMOTE_REASON_SHIFT) & DOWN_REMOTE_REASON_MASK;
}
