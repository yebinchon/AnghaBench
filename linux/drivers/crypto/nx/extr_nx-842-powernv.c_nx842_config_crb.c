
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct coprocessor_status_block {int dummy; } ;
struct coprocessor_request_block {int csb_addr; int target; int source; struct coprocessor_status_block csb; } ;
struct nx842_workmem {int ddl_out; int ddl_in; struct coprocessor_request_block crb; } ;


 int CRB_CSB_ADDRESS ;
 int CRB_CSB_AT ;
 int cpu_to_be64 (int) ;
 int memset (struct coprocessor_request_block*,int ,int) ;
 int nx842_get_pa (struct coprocessor_status_block*) ;
 int setup_ddl (int *,int ,unsigned char*,unsigned int,int) ;

__attribute__((used)) static int nx842_config_crb(const unsigned char *in, unsigned int inlen,
   unsigned char *out, unsigned int outlen,
   struct nx842_workmem *wmem)
{
 struct coprocessor_request_block *crb;
 struct coprocessor_status_block *csb;
 u64 csb_addr;
 int ret;

 crb = &wmem->crb;
 csb = &crb->csb;


 memset(crb, 0, sizeof(*crb));


 ret = setup_ddl(&crb->source, wmem->ddl_in,
   (unsigned char *)in, inlen, 1);
 if (ret)
  return ret;

 ret = setup_ddl(&crb->target, wmem->ddl_out,
   out, outlen, 0);
 if (ret)
  return ret;


 csb_addr = nx842_get_pa(csb) & CRB_CSB_ADDRESS;
 csb_addr |= CRB_CSB_AT;
 crb->csb_addr = cpu_to_be64(csb_addr);

 return 0;
}
