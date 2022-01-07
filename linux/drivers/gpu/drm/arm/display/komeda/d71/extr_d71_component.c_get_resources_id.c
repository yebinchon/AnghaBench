
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BLOCK_INFO_BLK_ID (int) ;
 int BLOCK_INFO_BLK_TYPE (int) ;
 int D71_PIPELINE_MAX_LAYERS ;
 int D71_PIPELINE_MAX_SCALERS ;
 int KOMEDA_COMPONENT_COMPIZ0 ;
 int KOMEDA_COMPONENT_IPS0 ;
 int KOMEDA_COMPONENT_LAYER0 ;
 int KOMEDA_COMPONENT_MERGER ;
 int KOMEDA_COMPONENT_SCALER0 ;
 int KOMEDA_COMPONENT_SPLITTER ;
 int KOMEDA_COMPONENT_TIMING_CTRLR ;
 int KOMEDA_COMPONENT_WB_LAYER ;

__attribute__((used)) static void get_resources_id(u32 hw_id, u32 *pipe_id, u32 *comp_id)
{
 u32 id = BLOCK_INFO_BLK_ID(hw_id);
 u32 pipe = id;

 switch (BLOCK_INFO_BLK_TYPE(hw_id)) {
 case 128:
  id = KOMEDA_COMPONENT_WB_LAYER;
  break;
 case 132:
  id = KOMEDA_COMPONENT_SPLITTER;
  break;
 case 133:
  pipe = id / D71_PIPELINE_MAX_SCALERS;
  id %= D71_PIPELINE_MAX_SCALERS;
  id += KOMEDA_COMPONENT_SCALER0;
  break;
 case 135:
  id += KOMEDA_COMPONENT_COMPIZ0;
  break;
 case 129:
  pipe = id / D71_PIPELINE_MAX_LAYERS;
  id %= D71_PIPELINE_MAX_LAYERS;
  id += KOMEDA_COMPONENT_LAYER0;
  break;
 case 130:
  id += KOMEDA_COMPONENT_IPS0;
  break;
 case 134:
  id = KOMEDA_COMPONENT_MERGER;
  break;
 case 131:
  id = KOMEDA_COMPONENT_TIMING_CTRLR;
  break;
 default:
  id = 0xFFFFFFFF;
 }

 if (comp_id)
  *comp_id = id;

 if (pipe_id)
  *pipe_id = pipe;
}
