
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hfi1_hwerror_msgs {int mask; int msg; } ;


 int format_hwmsg (char*,size_t,int ) ;

void hfi1_format_hwerrors(u64 hwerrs, const struct hfi1_hwerror_msgs *hwerrmsgs,
     size_t nhwerrmsgs, char *msg, size_t msgl)
{
 int i;

 for (i = 0; i < nhwerrmsgs; i++)
  if (hwerrs & hwerrmsgs[i].mask)
   format_hwmsg(msg, msgl, hwerrmsgs[i].msg);
}
