
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d40_log_lli {int lcsp13; int lcsp02; } ;


 int d40_log_lli_link (struct d40_log_lli*,struct d40_log_lli*,int,unsigned int) ;
 int writel_relaxed (int ,int *) ;

void d40_log_lli_lcla_write(struct d40_log_lli *lcla,
      struct d40_log_lli *lli_dst,
      struct d40_log_lli *lli_src,
      int next, unsigned int flags)
{
 d40_log_lli_link(lli_dst, lli_src, next, flags);

 writel_relaxed(lli_src->lcsp02, &lcla[0].lcsp02);
 writel_relaxed(lli_src->lcsp13, &lcla[0].lcsp13);
 writel_relaxed(lli_dst->lcsp02, &lcla[1].lcsp02);
 writel_relaxed(lli_dst->lcsp13, &lcla[1].lcsp13);
}
