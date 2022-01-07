
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct panfrost_job {int requirements; TYPE_2__* pfdev; } ;
struct TYPE_3__ {int nr_core_groups; } ;
struct TYPE_4__ {TYPE_1__ features; } ;


 int HW_ISSUE_8987 ;
 int PANFROST_JD_REQ_CORE_GRP_MASK ;
 int PANFROST_JD_REQ_FS ;
 int PANFROST_JD_REQ_ONLY_COMPUTE ;
 scalar_t__ panfrost_has_hw_issue (TYPE_2__*,int ) ;

__attribute__((used)) static int panfrost_job_get_slot(struct panfrost_job *job)
{




 if (job->requirements & PANFROST_JD_REQ_FS)
  return 0;
 return 1;
}
