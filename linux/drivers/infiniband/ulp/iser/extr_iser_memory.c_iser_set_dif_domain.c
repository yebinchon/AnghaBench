
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int prot_flags; int request; } ;
struct TYPE_4__ {int apptag_check_mask; int app_escape; int ref_escape; int ref_remap; int ref_tag; int pi_interval; } ;
struct TYPE_3__ {TYPE_2__ dif; } ;
struct ib_sig_domain {TYPE_1__ sig; int sig_type; } ;


 int IB_SIG_TYPE_T10_DIF ;
 int SCSI_PROT_REF_INCREMENT ;
 int scsi_prot_interval (struct scsi_cmnd*) ;
 int t10_pi_ref_tag (int ) ;

__attribute__((used)) static void
iser_set_dif_domain(struct scsi_cmnd *sc, struct ib_sig_domain *domain)
{
 domain->sig_type = IB_SIG_TYPE_T10_DIF;
 domain->sig.dif.pi_interval = scsi_prot_interval(sc);
 domain->sig.dif.ref_tag = t10_pi_ref_tag(sc->request);




 domain->sig.dif.apptag_check_mask = 0xffff;
 domain->sig.dif.app_escape = 1;
 domain->sig.dif.ref_escape = 1;
 if (sc->prot_flags & SCSI_PROT_REF_INCREMENT)
  domain->sig.dif.ref_remap = 1;
}
