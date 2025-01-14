
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CUTOFF_WRITEBACK ;
 scalar_t__ CUTOFF_WRITEBACK_MAX ;
 scalar_t__ CUTOFF_WRITEBACK_SYNC ;
 scalar_t__ CUTOFF_WRITEBACK_SYNC_MAX ;
 scalar_t__ bch_cutoff_writeback ;
 scalar_t__ bch_cutoff_writeback_sync ;
 int pr_warn (char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void check_module_parameters(void)
{
 if (bch_cutoff_writeback_sync == 0)
  bch_cutoff_writeback_sync = CUTOFF_WRITEBACK_SYNC;
 else if (bch_cutoff_writeback_sync > CUTOFF_WRITEBACK_SYNC_MAX) {
  pr_warn("set bch_cutoff_writeback_sync (%u) to max value %u",
   bch_cutoff_writeback_sync, CUTOFF_WRITEBACK_SYNC_MAX);
  bch_cutoff_writeback_sync = CUTOFF_WRITEBACK_SYNC_MAX;
 }

 if (bch_cutoff_writeback == 0)
  bch_cutoff_writeback = CUTOFF_WRITEBACK;
 else if (bch_cutoff_writeback > CUTOFF_WRITEBACK_MAX) {
  pr_warn("set bch_cutoff_writeback (%u) to max value %u",
   bch_cutoff_writeback, CUTOFF_WRITEBACK_MAX);
  bch_cutoff_writeback = CUTOFF_WRITEBACK_MAX;
 }

 if (bch_cutoff_writeback > bch_cutoff_writeback_sync) {
  pr_warn("set bch_cutoff_writeback (%u) to %u",
   bch_cutoff_writeback, bch_cutoff_writeback_sync);
  bch_cutoff_writeback = bch_cutoff_writeback_sync;
 }
}
