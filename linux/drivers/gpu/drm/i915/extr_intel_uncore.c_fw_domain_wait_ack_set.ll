; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_wait_ack_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_wait_ack_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_forcewake_domain = type { i32 }

@FORCEWAKE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: timed out waiting for forcewake ack request.\0A\00", align 1
@TAINT_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_forcewake_domain*)* @fw_domain_wait_ack_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_domain_wait_ack_set(%struct.intel_uncore_forcewake_domain* %0) #0 {
  %2 = alloca %struct.intel_uncore_forcewake_domain*, align 8
  store %struct.intel_uncore_forcewake_domain* %0, %struct.intel_uncore_forcewake_domain** %2, align 8
  %3 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %4 = load i32, i32* @FORCEWAKE_KERNEL, align 4
  %5 = call i64 @wait_ack_set(%struct.intel_uncore_forcewake_domain* %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %9 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @intel_uncore_forcewake_domain_to_str(i32 %10)
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @TAINT_WARN, align 4
  %14 = call i32 @add_taint_for_CI(i32 %13)
  br label %15

15:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @wait_ack_set(%struct.intel_uncore_forcewake_domain*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @intel_uncore_forcewake_domain_to_str(i32) #1

declare dso_local i32 @add_taint_for_CI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
