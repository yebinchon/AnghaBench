; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_uc_is_wopcm_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_uc.c_uc_is_wopcm_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uc = type { i32 }
%struct.intel_gt = type { %struct.intel_uncore* }
%struct.intel_uncore = type { i32 }

@GUC_WOPCM_SIZE = common dso_local global i32 0, align 4
@GUC_WOPCM_SIZE_LOCKED = common dso_local global i32 0, align 4
@DMA_GUC_WOPCM_OFFSET = common dso_local global i32 0, align 4
@GUC_WOPCM_OFFSET_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uc*)* @uc_is_wopcm_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uc_is_wopcm_locked(%struct.intel_uc* %0) #0 {
  %2 = alloca %struct.intel_uc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_uc* %0, %struct.intel_uc** %2, align 8
  %5 = load %struct.intel_uc*, %struct.intel_uc** %2, align 8
  %6 = call %struct.intel_gt* @uc_to_gt(%struct.intel_uc* %5)
  store %struct.intel_gt* %6, %struct.intel_gt** %3, align 8
  %7 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %8 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %7, i32 0, i32 0
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %8, align 8
  store %struct.intel_uncore* %9, %struct.intel_uncore** %4, align 8
  %10 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %11 = load i32, i32* @GUC_WOPCM_SIZE, align 4
  %12 = call i32 @intel_uncore_read(%struct.intel_uncore* %10, i32 %11)
  %13 = load i32, i32* @GUC_WOPCM_SIZE_LOCKED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %4, align 8
  %18 = load i32, i32* @DMA_GUC_WOPCM_OFFSET, align 4
  %19 = call i32 @intel_uncore_read(%struct.intel_uncore* %17, i32 %18)
  %20 = load i32, i32* @GUC_WOPCM_OFFSET_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i1 [ true, %1 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  ret i32 %25
}

declare dso_local %struct.intel_gt* @uc_to_gt(%struct.intel_uc*) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
