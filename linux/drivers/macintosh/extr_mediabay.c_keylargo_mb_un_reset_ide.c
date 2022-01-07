
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_bay_info {int dummy; } ;


 int KEYLARGO_FCR1 ;
 int KL1_EIDE0_RESET_N ;
 int MB_BIS (struct media_bay_info*,int ,int ) ;

__attribute__((used)) static void keylargo_mb_un_reset_ide(struct media_bay_info* bay)
{
 MB_BIS(bay, KEYLARGO_FCR1, KL1_EIDE0_RESET_N);
}
