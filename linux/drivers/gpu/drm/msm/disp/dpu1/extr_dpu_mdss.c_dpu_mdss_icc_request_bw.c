
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct msm_mdss {int dummy; } ;
struct dpu_mdss {int num_paths; int * path; } ;


 int MAX_BW ;
 int icc_set_bw (int ,int,int ) ;
 int kBps_to_icc (int) ;
 struct dpu_mdss* to_dpu_mdss (struct msm_mdss*) ;

__attribute__((used)) static void dpu_mdss_icc_request_bw(struct msm_mdss *mdss)
{
 struct dpu_mdss *dpu_mdss = to_dpu_mdss(mdss);
 int i;
 u64 avg_bw = dpu_mdss->num_paths ? MAX_BW / dpu_mdss->num_paths : 0;

 for (i = 0; i < dpu_mdss->num_paths; i++)
  icc_set_bw(dpu_mdss->path[i], avg_bw, kBps_to_icc(MAX_BW));
}
