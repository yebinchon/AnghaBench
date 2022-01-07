
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct etmv4_drvdata {int instrp0; int trcbb; int trccond; int trccci; int retstack; int trc_error; int syncpr; int stallctl; int sysstall; int nooverflow; int atbtrig; int lpoverride; scalar_t__ base; void* nr_cntr; void* nrseqstate; void* trcid_size; void* nr_ext_inp; void* numvmidc; void* numcidc; void* nr_ss_cmp; void* nr_resource; void* nr_pe_cmp; void* nr_addr_cmp; void* nr_pe; void* ns_ex_level; void* s_ex_level; void* ccitmin; void* ccsize; void* vmid_size; void* ctxid_size; void* arch; void* ts_size; void* q_support; void* nr_event; } ;


 void* BMVAL (int ,int,int) ;
 int CS_LOCK (scalar_t__) ;
 int CS_UNLOCK (scalar_t__) ;
 scalar_t__ TRCIDR0 ;
 scalar_t__ TRCIDR1 ;
 scalar_t__ TRCIDR2 ;
 scalar_t__ TRCIDR3 ;
 scalar_t__ TRCIDR4 ;
 scalar_t__ TRCIDR5 ;
 int etm4_os_unlock (struct etmv4_drvdata*) ;
 int readl_relaxed (scalar_t__) ;

__attribute__((used)) static void etm4_init_arch_data(void *info)
{
 u32 etmidr0;
 u32 etmidr1;
 u32 etmidr2;
 u32 etmidr3;
 u32 etmidr4;
 u32 etmidr5;
 struct etmv4_drvdata *drvdata = info;


 etm4_os_unlock(drvdata);

 CS_UNLOCK(drvdata->base);


 etmidr0 = readl_relaxed(drvdata->base + TRCIDR0);


 if (BMVAL(etmidr0, 1, 1) && BMVAL(etmidr0, 2, 2))
  drvdata->instrp0 = 1;
 else
  drvdata->instrp0 = 0;


 if (BMVAL(etmidr0, 5, 5))
  drvdata->trcbb = 1;
 else
  drvdata->trcbb = 0;


 if (BMVAL(etmidr0, 6, 6))
  drvdata->trccond = 1;
 else
  drvdata->trccond = 0;


 if (BMVAL(etmidr0, 7, 7))
  drvdata->trccci = 1;
 else
  drvdata->trccci = 0;


 if (BMVAL(etmidr0, 9, 9))
  drvdata->retstack = 1;
 else
  drvdata->retstack = 0;


 drvdata->nr_event = BMVAL(etmidr0, 10, 11);

 drvdata->q_support = BMVAL(etmidr0, 15, 16);

 drvdata->ts_size = BMVAL(etmidr0, 24, 28);


 etmidr1 = readl_relaxed(drvdata->base + TRCIDR1);




 drvdata->arch = BMVAL(etmidr1, 4, 11);


 etmidr2 = readl_relaxed(drvdata->base + TRCIDR2);

 drvdata->ctxid_size = BMVAL(etmidr2, 5, 9);

 drvdata->vmid_size = BMVAL(etmidr2, 10, 14);

 drvdata->ccsize = BMVAL(etmidr2, 25, 28);

 etmidr3 = readl_relaxed(drvdata->base + TRCIDR3);

 drvdata->ccitmin = BMVAL(etmidr3, 0, 11);

 drvdata->s_ex_level = BMVAL(etmidr3, 16, 19);

 drvdata->ns_ex_level = BMVAL(etmidr3, 20, 23);





 if (BMVAL(etmidr3, 24, 24))
  drvdata->trc_error = 1;
 else
  drvdata->trc_error = 0;


 if (BMVAL(etmidr3, 25, 25))
  drvdata->syncpr = 1;
 else
  drvdata->syncpr = 0;


 if (BMVAL(etmidr3, 26, 26))
  drvdata->stallctl = 1;
 else
  drvdata->stallctl = 0;


 if (BMVAL(etmidr3, 27, 27))
  drvdata->sysstall = 1;
 else
  drvdata->sysstall = 0;


 drvdata->nr_pe = BMVAL(etmidr3, 28, 30);


 if (BMVAL(etmidr3, 31, 31))
  drvdata->nooverflow = 1;
 else
  drvdata->nooverflow = 0;


 etmidr4 = readl_relaxed(drvdata->base + TRCIDR4);

 drvdata->nr_addr_cmp = BMVAL(etmidr4, 0, 3);

 drvdata->nr_pe_cmp = BMVAL(etmidr4, 12, 15);






 drvdata->nr_resource = BMVAL(etmidr4, 16, 19) + 1;




 drvdata->nr_ss_cmp = BMVAL(etmidr4, 20, 23);

 drvdata->numcidc = BMVAL(etmidr4, 24, 27);

 drvdata->numvmidc = BMVAL(etmidr4, 28, 31);

 etmidr5 = readl_relaxed(drvdata->base + TRCIDR5);

 drvdata->nr_ext_inp = BMVAL(etmidr5, 0, 8);

 drvdata->trcid_size = BMVAL(etmidr5, 16, 21);

 if (BMVAL(etmidr5, 22, 22))
  drvdata->atbtrig = 1;
 else
  drvdata->atbtrig = 0;




 if (BMVAL(etmidr5, 23, 23))
  drvdata->lpoverride = 1;
 else
  drvdata->lpoverride = 0;

 drvdata->nrseqstate = BMVAL(etmidr5, 25, 27);

 drvdata->nr_cntr = BMVAL(etmidr5, 28, 30);
 CS_LOCK(drvdata->base);
}
