; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___doorbell_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_submission.c___doorbell_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }
%struct.intel_uncore = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_uncore* }

@GUC_NUM_DOORBELLS = common dso_local global i64 0, align 8
@GEN8_DRB_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*, i64)* @__doorbell_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__doorbell_valid(%struct.intel_guc* %0, i64 %1) #0 {
  %3 = alloca %struct.intel_guc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.intel_guc*, %struct.intel_guc** %3, align 8
  %7 = call %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  store %struct.intel_uncore* %9, %struct.intel_uncore** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @GUC_NUM_DOORBELLS, align 8
  %12 = icmp sge i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @GEN8_DRBREGL(i64 %16)
  %18 = call i32 @intel_uncore_read(%struct.intel_uncore* %15, i32 %17)
  %19 = load i32, i32* @GEN8_DRB_VALID, align 4
  %20 = and i32 %18, %19
  ret i32 %20
}

declare dso_local %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @GEN8_DRBREGL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
