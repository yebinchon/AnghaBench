
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct komeda_pipeline {int ctrlr; int improc; int merger; int splitter; int * scalers; int compiz; int wb_layer; int * layers; struct komeda_dev* mdev; } ;
struct komeda_dev {struct komeda_pipeline** pipelines; } ;
struct komeda_component {int dummy; } ;


 int DRM_ERROR (char*,int) ;
 struct komeda_component** to_cpos (int ) ;

__attribute__((used)) static struct komeda_component **
komeda_pipeline_get_component_pos(struct komeda_pipeline *pipe, int id)
{
 struct komeda_dev *mdev = pipe->mdev;
 struct komeda_pipeline *temp = ((void*)0);
 struct komeda_component **pos = ((void*)0);

 switch (id) {
 case 137:
 case 136:
 case 135:
 case 134:
  pos = to_cpos(pipe->layers[id - 137]);
  break;
 case 128:
  pos = to_cpos(pipe->wb_layer);
  break;
 case 141:
 case 140:
  temp = mdev->pipelines[id - 141];
  if (!temp) {
   DRM_ERROR("compiz-%d doesn't exist.\n", id);
   return ((void*)0);
  }
  pos = to_cpos(temp->compiz);
  break;
 case 132:
 case 131:
  pos = to_cpos(pipe->scalers[id - 132]);
  break;
 case 130:
  pos = to_cpos(pipe->splitter);
  break;
 case 133:
  pos = to_cpos(pipe->merger);
  break;
 case 139:
 case 138:
  temp = mdev->pipelines[id - 139];
  if (!temp) {
   DRM_ERROR("ips-%d doesn't exist.\n", id);
   return ((void*)0);
  }
  pos = to_cpos(temp->improc);
  break;
 case 129:
  pos = to_cpos(pipe->ctrlr);
  break;
 default:
  pos = ((void*)0);
  DRM_ERROR("Unknown pipeline resource ID: %d.\n", id);
  break;
 }

 return pos;
}
