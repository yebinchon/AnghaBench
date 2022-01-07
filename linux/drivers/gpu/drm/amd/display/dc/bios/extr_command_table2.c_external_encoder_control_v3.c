
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bp_external_encoder_control {int dummy; } ;
struct bios_parser {int dummy; } ;
typedef enum bp_result { ____Placeholder_bp_result } bp_result ;


 int BP_RESULT_OK ;

__attribute__((used)) static enum bp_result external_encoder_control_v3(
 struct bios_parser *bp,
 struct bp_external_encoder_control *cntl)
{

 return BP_RESULT_OK;
}
