
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ccp_device {int current_id; } ;


 int CCP_JOBID_MASK ;
 int atomic_inc_return (int *) ;

__attribute__((used)) static u32 ccp_gen_jobid(struct ccp_device *ccp)
{
 return atomic_inc_return(&ccp->current_id) & CCP_JOBID_MASK;
}
