; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_enable_flush_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_guc_log_enable_flush_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { i32 }

@INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER = common dso_local global i32 0, align 4
@INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_guc_log*)* @guc_log_enable_flush_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_log_enable_flush_events(%struct.intel_guc_log* %0) #0 {
  %2 = alloca %struct.intel_guc_log*, align 8
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %2, align 8
  %3 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %4 = call i32 @log_to_guc(%struct.intel_guc_log* %3)
  %5 = load i32, i32* @INTEL_GUC_RECV_MSG_FLUSH_LOG_BUFFER, align 4
  %6 = load i32, i32* @INTEL_GUC_RECV_MSG_CRASH_DUMP_POSTED, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @intel_guc_enable_msg(i32 %4, i32 %7)
  ret void
}

declare dso_local i32 @intel_guc_enable_msg(i32, i32) #1

declare dso_local i32 @log_to_guc(%struct.intel_guc_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
