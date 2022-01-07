
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct icc_node {int dummy; } ;


 scalar_t__ max (scalar_t__,scalar_t__) ;

__attribute__((used)) static int qcom_icc_aggregate(struct icc_node *node, u32 tag, u32 avg_bw,
         u32 peak_bw, u32 *agg_avg, u32 *agg_peak)
{
 *agg_avg += avg_bw;
 *agg_peak = max(*agg_peak, peak_bw);

 return 0;
}
