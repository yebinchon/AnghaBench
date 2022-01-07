; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_relay_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_log.c_intel_guc_log_relay_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc_log = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.intel_guc = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_log_relay_close(%struct.intel_guc_log* %0) #0 {
  %2 = alloca %struct.intel_guc_log*, align 8
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_guc_log* %0, %struct.intel_guc_log** %2, align 8
  %5 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %6 = call %struct.intel_guc* @log_to_guc(%struct.intel_guc_log* %5)
  store %struct.intel_guc* %6, %struct.intel_guc** %3, align 8
  %7 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %8 = call %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %9, align 8
  store %struct.drm_i915_private* %10, %struct.drm_i915_private** %4, align 8
  %11 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %12 = call i32 @guc_log_disable_flush_events(%struct.intel_guc_log* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = call i32 @intel_synchronize_irq(%struct.drm_i915_private* %13)
  %15 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %16 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = call i32 @flush_work(i32* %17)
  %19 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %20 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %24 = call i32 @intel_guc_log_relay_enabled(%struct.intel_guc_log* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @GEM_BUG_ON(i32 %27)
  %29 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %30 = call i32 @guc_log_unmap(%struct.intel_guc_log* %29)
  %31 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %32 = call i32 @guc_log_relay_destroy(%struct.intel_guc_log* %31)
  %33 = load %struct.intel_guc_log*, %struct.intel_guc_log** %2, align 8
  %34 = getelementptr inbounds %struct.intel_guc_log, %struct.intel_guc_log* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  ret void
}

declare dso_local %struct.intel_guc* @log_to_guc(%struct.intel_guc_log*) #1

declare dso_local %struct.TYPE_4__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @guc_log_disable_flush_events(%struct.intel_guc_log*) #1

declare dso_local i32 @intel_synchronize_irq(%struct.drm_i915_private*) #1

declare dso_local i32 @flush_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_guc_log_relay_enabled(%struct.intel_guc_log*) #1

declare dso_local i32 @guc_log_unmap(%struct.intel_guc_log*) #1

declare dso_local i32 @guc_log_relay_destroy(%struct.intel_guc_log*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
