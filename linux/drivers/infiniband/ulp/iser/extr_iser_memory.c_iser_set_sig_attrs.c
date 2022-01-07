
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int prot_flags; } ;
struct TYPE_4__ {void* bg_type; } ;
struct TYPE_5__ {TYPE_1__ dif; } ;
struct TYPE_6__ {TYPE_2__ sig; void* sig_type; } ;
struct ib_sig_attrs {TYPE_3__ mem; TYPE_3__ wire; } ;


 int EINVAL ;
 void* IB_SIG_TYPE_NONE ;
 void* IB_T10DIF_CRC ;
 void* IB_T10DIF_CSUM ;
 int SCSI_PROT_IP_CHECKSUM ;






 int iser_err (char*,int) ;
 int iser_set_dif_domain (struct scsi_cmnd*,TYPE_3__*) ;
 int scsi_get_prot_op (struct scsi_cmnd*) ;

__attribute__((used)) static int
iser_set_sig_attrs(struct scsi_cmnd *sc, struct ib_sig_attrs *sig_attrs)
{
 switch (scsi_get_prot_op(sc)) {
 case 130:
 case 131:
  sig_attrs->mem.sig_type = IB_SIG_TYPE_NONE;
  iser_set_dif_domain(sc, &sig_attrs->wire);
  sig_attrs->wire.sig.dif.bg_type = IB_T10DIF_CRC;
  break;
 case 133:
 case 128:
  sig_attrs->wire.sig_type = IB_SIG_TYPE_NONE;
  iser_set_dif_domain(sc, &sig_attrs->mem);
  sig_attrs->mem.sig.dif.bg_type = sc->prot_flags & SCSI_PROT_IP_CHECKSUM ?
      IB_T10DIF_CSUM : IB_T10DIF_CRC;
  break;
 case 132:
 case 129:
  iser_set_dif_domain(sc, &sig_attrs->wire);
  sig_attrs->wire.sig.dif.bg_type = IB_T10DIF_CRC;
  iser_set_dif_domain(sc, &sig_attrs->mem);
  sig_attrs->mem.sig.dif.bg_type = sc->prot_flags & SCSI_PROT_IP_CHECKSUM ?
      IB_T10DIF_CSUM : IB_T10DIF_CRC;
  break;
 default:
  iser_err("Unsupported PI operation %d\n",
    scsi_get_prot_op(sc));
  return -EINVAL;
 }

 return 0;
}
