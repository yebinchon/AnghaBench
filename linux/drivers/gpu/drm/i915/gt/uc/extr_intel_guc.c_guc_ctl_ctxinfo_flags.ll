; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_guc_ctl_ctxinfo_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_guc_ctl_ctxinfo_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32 }

@GUC_MAX_STAGE_DESCRIPTORS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@GUC_CTL_BASE_ADDR_SHIFT = common dso_local global i32 0, align 4
@GUC_CTL_CTXNUM_IN16_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_guc*)* @guc_ctl_ctxinfo_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guc_ctl_ctxinfo_flags(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %7 = call i64 @intel_guc_is_submission_supported(%struct.intel_guc* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %11 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %12 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @intel_guc_ggtt_offset(%struct.intel_guc* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @GUC_MAX_STAGE_DESCRIPTORS, align 4
  %16 = sdiv i32 %15, 16
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GUC_CTL_BASE_ADDR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @GUC_CTL_CTXNUM_IN16_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = or i32 %22, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %9, %1
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local i64 @intel_guc_is_submission_supported(%struct.intel_guc*) #1

declare dso_local i32 @intel_guc_ggtt_offset(%struct.intel_guc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
