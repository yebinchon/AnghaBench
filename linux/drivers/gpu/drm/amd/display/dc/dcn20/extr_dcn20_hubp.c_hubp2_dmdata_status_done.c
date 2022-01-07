
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hubp {int dummy; } ;
struct dcn20_hubp {int dummy; } ;


 int DMDATA_DONE ;
 int DMDATA_STATUS ;
 int REG_GET (int ,int ,int*) ;
 struct dcn20_hubp* TO_DCN20_HUBP (struct hubp*) ;

bool hubp2_dmdata_status_done(struct hubp *hubp)
{
 uint32_t status;
 struct dcn20_hubp *hubp2 = TO_DCN20_HUBP(hubp);

 REG_GET(DMDATA_STATUS, DMDATA_DONE, &status);
 return (status == 1);
}
