
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct komeda_splitter_state {int base; int overlap; int vsize; int hsize; } ;
struct TYPE_5__ {TYPE_1__* pipeline; } ;
struct komeda_splitter {TYPE_2__ base; int vsize; int hsize; } ;
struct komeda_data_flow_cfg {int input; int overlap; int in_h; int in_w; } ;
struct komeda_component_state {int dummy; } ;
struct drm_connector_state {int crtc; int connector; int state; } ;
struct TYPE_4__ {int * scalers; } ;


 int DRM_DEBUG_ATOMIC (char*,...) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct komeda_component_state*) ;
 int PTR_ERR (struct komeda_component_state*) ;
 int in_range (int *,int ) ;
 int komeda_component_add_input (int *,int *,int ) ;
 struct komeda_component_state* komeda_component_get_state_and_set_user (TYPE_2__*,int ,int ,int ) ;
 int komeda_component_set_output (int *,TYPE_2__*,int) ;
 int komeda_split_data_flow (int ,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*,struct komeda_data_flow_cfg*) ;
 struct komeda_splitter_state* to_splitter_st (struct komeda_component_state*) ;

__attribute__((used)) static int
komeda_splitter_validate(struct komeda_splitter *splitter,
    struct drm_connector_state *conn_st,
    struct komeda_data_flow_cfg *dflow,
    struct komeda_data_flow_cfg *l_output,
    struct komeda_data_flow_cfg *r_output)
{
 struct komeda_component_state *c_st;
 struct komeda_splitter_state *st;

 if (!splitter) {
  DRM_DEBUG_ATOMIC("Current HW doesn't support splitter.\n");
  return -EINVAL;
 }

 if (!in_range(&splitter->hsize, dflow->in_w)) {
  DRM_DEBUG_ATOMIC("split in_w:%d is out of the acceptable range.\n",
     dflow->in_w);
  return -EINVAL;
 }

 if (!in_range(&splitter->vsize, dflow->in_h)) {
  DRM_DEBUG_ATOMIC("split in_h: %d exceeds the acceptable range.\n",
     dflow->in_h);
  return -EINVAL;
 }

 c_st = komeda_component_get_state_and_set_user(&splitter->base,
   conn_st->state, conn_st->connector, conn_st->crtc);

 if (IS_ERR(c_st))
  return PTR_ERR(c_st);

 komeda_split_data_flow(splitter->base.pipeline->scalers[0],
          dflow, l_output, r_output);

 st = to_splitter_st(c_st);
 st->hsize = dflow->in_w;
 st->vsize = dflow->in_h;
 st->overlap = dflow->overlap;

 komeda_component_add_input(&st->base, &dflow->input, 0);
 komeda_component_set_output(&l_output->input, &splitter->base, 0);
 komeda_component_set_output(&r_output->input, &splitter->base, 1);

 return 0;
}
