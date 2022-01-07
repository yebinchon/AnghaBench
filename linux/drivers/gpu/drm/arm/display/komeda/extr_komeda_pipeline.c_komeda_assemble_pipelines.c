
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int dummy; } ;
struct komeda_dev {int n_pipelines; struct komeda_pipeline** pipelines; } ;


 int komeda_pipeline_assemble (struct komeda_pipeline*) ;
 int komeda_pipeline_dump (struct komeda_pipeline*) ;

int komeda_assemble_pipelines(struct komeda_dev *mdev)
{
 struct komeda_pipeline *pipe;
 int i;

 for (i = 0; i < mdev->n_pipelines; i++) {
  pipe = mdev->pipelines[i];

  komeda_pipeline_assemble(pipe);
  komeda_pipeline_dump(pipe);
 }

 return 0;
}
