
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbp2_target {unsigned int mgt_orb_timeout; } ;


 unsigned int clamp_val (unsigned int,int,int) ;
 int dev_notice (int ,char*,unsigned int) ;
 int tgt_dev (struct sbp2_target*) ;

__attribute__((used)) static void sbp2_clamp_management_orb_timeout(struct sbp2_target *tgt)
{
 unsigned int timeout = tgt->mgt_orb_timeout;

 if (timeout > 40000)
  dev_notice(tgt_dev(tgt), "%ds mgt_ORB_timeout limited to 40s\n",
      timeout / 1000);

 tgt->mgt_orb_timeout = clamp_val(timeout, 5000, 40000);
}
