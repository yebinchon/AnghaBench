
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce {int status; int mcgstatus; } ;


 int MCG_STATUS_RIPV ;
 int MCI_STATUS_DEFERRED ;
 int MCI_STATUS_PCC ;
 int MCI_STATUS_UC ;

__attribute__((used)) static const char *decode_error_status(struct mce *m)
{
 if (m->status & MCI_STATUS_UC) {
  if (m->status & MCI_STATUS_PCC)
   return "System Fatal error.";
  if (m->mcgstatus & MCG_STATUS_RIPV)
   return "Uncorrected, software restartable error.";
  return "Uncorrected, software containable error.";
 }

 if (m->status & MCI_STATUS_DEFERRED)
  return "Deferred error, no action required.";

 return "Corrected error, no action required.";
}
