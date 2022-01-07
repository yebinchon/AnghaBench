
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dce110_link_encoder {int dummy; } ;


 int DP_LINK_CNTL ;
 int DP_LINK_TRAINING_COMPLETE ;
 int REG_UPDATE (int ,int ,int) ;

__attribute__((used)) static void set_link_training_complete(
 struct dce110_link_encoder *enc110,
 bool complete)
{



 REG_UPDATE(DP_LINK_CNTL, DP_LINK_TRAINING_COMPLETE, complete);

}
