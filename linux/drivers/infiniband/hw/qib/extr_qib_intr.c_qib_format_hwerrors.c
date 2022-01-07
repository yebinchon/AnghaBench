
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_hwerror_msgs {int mask; int msg; } ;


 int qib_format_hwmsg (char*,size_t,int ) ;

void qib_format_hwerrors(u64 hwerrs, const struct qib_hwerror_msgs *hwerrmsgs,
    size_t nhwerrmsgs, char *msg, size_t msgl)
{
 int i;

 for (i = 0; i < nhwerrmsgs; i++)
  if (hwerrs & hwerrmsgs[i].mask)
   qib_format_hwmsg(msg, msgl, hwerrmsgs[i].msg);
}
