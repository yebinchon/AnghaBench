
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
typedef int detail ;


 int HW_EVENT_ERR_UNCORRECTED ;
 int edac_mc_handle_error (int ,struct mem_ctl_info*,int,int ,int ,unsigned long,int,unsigned int,int,char const*,char*) ;
 int snprintf (char*,int,char*,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void i5100_handle_ue(struct mem_ctl_info *mci,
       int chan,
       unsigned bank,
       unsigned rank,
       unsigned long syndrome,
       unsigned cas,
       unsigned ras,
       const char *msg)
{
 char detail[80];


 snprintf(detail, sizeof(detail),
   "bank %u, cas %u, ras %u\n",
   bank, cas, ras);

 edac_mc_handle_error(HW_EVENT_ERR_UNCORRECTED, mci, 1,
        0, 0, syndrome,
        chan, rank, -1,
        msg, detail);
}
