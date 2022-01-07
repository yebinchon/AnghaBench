
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msm_file_private {int dummy; } ;


 int kfree (struct msm_file_private*) ;
 int msm_submitqueue_close (struct msm_file_private*) ;

__attribute__((used)) static void context_close(struct msm_file_private *ctx)
{
 msm_submitqueue_close(ctx);
 kfree(ctx);
}
