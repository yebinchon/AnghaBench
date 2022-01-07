
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sbefifo {int async_ffdc; TYPE_1__* fsi_dev; } ;
typedef int raw_word ;
typedef int __be32 ;
struct TYPE_2__ {int slave; } ;


 int CFAM_GP_MBOX_SBM_ADDR ;
 int CFAM_SBM_SBE_ASYNC_FFDC ;
 int CFAM_SBM_SBE_BOOTED ;
 int CFAM_SBM_SBE_STATE_MASK ;
 int CFAM_SBM_SBE_STATE_SHIFT ;
 int EBUSY ;
 int ESHUTDOWN ;
 int be32_to_cpu (int ) ;
 int fsi_slave_read (int ,int ,int *,int) ;

__attribute__((used)) static int sbefifo_check_sbe_state(struct sbefifo *sbefifo)
{
 __be32 raw_word;
 u32 sbm;
 int rc;

 rc = fsi_slave_read(sbefifo->fsi_dev->slave, CFAM_GP_MBOX_SBM_ADDR,
       &raw_word, sizeof(raw_word));
 if (rc)
  return rc;
 sbm = be32_to_cpu(raw_word);


 if (!(sbm & CFAM_SBM_SBE_BOOTED))
  return -ESHUTDOWN;


 switch ((sbm & CFAM_SBM_SBE_STATE_MASK) >> CFAM_SBM_SBE_STATE_SHIFT) {
 case 128:
  return -ESHUTDOWN;
 case 136:
  return -EBUSY;
 case 133:
 case 132:
 case 131:
 case 129:
 case 135:
  break;
 case 134:
 case 130:
  return -ESHUTDOWN;
 }


 if (sbm & CFAM_SBM_SBE_ASYNC_FFDC)
  sbefifo->async_ffdc = 1;

 return 0;
}
