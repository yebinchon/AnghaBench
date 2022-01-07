
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct scsi_cmnd {int prot_flags; } ;


 int IB_SIG_CHECK_GUARD ;
 int IB_SIG_CHECK_REFTAG ;
 int SCSI_PROT_GUARD_CHECK ;
 int SCSI_PROT_REF_CHECK ;

__attribute__((used)) static inline void
iser_set_prot_checks(struct scsi_cmnd *sc, u8 *mask)
{
 *mask = 0;
 if (sc->prot_flags & SCSI_PROT_REF_CHECK)
  *mask |= IB_SIG_CHECK_REFTAG;
 if (sc->prot_flags & SCSI_PROT_GUARD_CHECK)
  *mask |= IB_SIG_CHECK_GUARD;
}
