
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dm_validation_status { ____Placeholder_dm_validation_status } dm_validation_status ;
const char *dml_get_status_message(enum dm_validation_status status)
{
 switch (status) {
 case 128: return "Validation OK";
 case 138: return "Scale ratio/tap";
 case 137: return "Source pixel format";
 case 133: return "Viewport size";
 case 135: return "Total vertical active bandwidth";
 case 148: return "DIO support";
 case 144: return "Not enough DSC Units";
 case 146: return "DSC clock required";
 case 134: return "Urgent latency";
 case 139: return "Re-ordering buffer";
 case 147: return "Dispclk and Dppclk";
 case 136: return "Total available pipes";
 case 143: return "Number of OTG";
 case 130: return "Writeback mode";
 case 131: return "Writeback latency";
 case 129: return "Writeback scale ratio/tap";
 case 149: return "Cursor support";
 case 142: return "Pitch support";
 case 140: return "PTE buffer size";
 case 145: return "DSC input bpc";
 case 141: return "Prefetch support";
 case 132: return "Vertical ratio prefetch";
 default: return "Unknown Status";
 }
}
