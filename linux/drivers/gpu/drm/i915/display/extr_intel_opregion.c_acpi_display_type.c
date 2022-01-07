
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int connector_type; } ;
struct intel_connector {TYPE_1__ base; } ;


 int ACPI_DISPLAY_TYPE_EXTERNAL_DIGITAL ;
 int ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL ;
 int ACPI_DISPLAY_TYPE_OTHER ;
 int ACPI_DISPLAY_TYPE_TV ;
 int ACPI_DISPLAY_TYPE_VGA ;
 int MISSING_CASE (int) ;

__attribute__((used)) static u32 acpi_display_type(struct intel_connector *connector)
{
 u32 display_type;

 switch (connector->base.connector_type) {
 case 130:
 case 140:
  display_type = ACPI_DISPLAY_TYPE_VGA;
  break;
 case 142:
 case 133:
 case 143:
 case 144:
 case 132:
  display_type = ACPI_DISPLAY_TYPE_TV;
  break;
 case 138:
 case 139:
 case 137:
 case 136:
 case 135:
  display_type = ACPI_DISPLAY_TYPE_EXTERNAL_DIGITAL;
  break;
 case 134:
 case 128:
 case 141:
  display_type = ACPI_DISPLAY_TYPE_INTERNAL_DIGITAL;
  break;
 case 131:
 case 129:
  display_type = ACPI_DISPLAY_TYPE_OTHER;
  break;
 default:
  MISSING_CASE(connector->base.connector_type);
  display_type = ACPI_DISPLAY_TYPE_OTHER;
  break;
 }

 return display_type;
}
