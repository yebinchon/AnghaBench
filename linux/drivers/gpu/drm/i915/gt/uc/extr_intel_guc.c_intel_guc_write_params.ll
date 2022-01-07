; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_write_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc.c_intel_guc_write_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { i32* }
%struct.intel_uncore = type { i32 }
%struct.TYPE_2__ = type { %struct.intel_uncore* }

@FORCEWAKE_BLITTER = common dso_local global i32 0, align 4
@GUC_CTL_MAX_DWORDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_guc_write_params(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %5 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %6 = call %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %7, align 8
  store %struct.intel_uncore* %8, %struct.intel_uncore** %3, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %10 = load i32, i32* @FORCEWAKE_BLITTER, align 4
  %11 = call i32 @intel_uncore_forcewake_get(%struct.intel_uncore* %9, i32 %10)
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %13 = call i32 @SOFT_SCRATCH(i32 0)
  %14 = call i32 @intel_uncore_write(%struct.intel_uncore* %12, i32 %13, i32 0)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %32, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @GUC_CTL_MAX_DWORDS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 1, %21
  %23 = call i32 @SOFT_SCRATCH(i32 %22)
  %24 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %25 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @intel_uncore_write(%struct.intel_uncore* %20, i32 %23, i32 %30)
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %37 = load i32, i32* @FORCEWAKE_BLITTER, align 4
  %38 = call i32 @intel_uncore_forcewake_put(%struct.intel_uncore* %36, i32 %37)
  ret void
}

declare dso_local %struct.TYPE_2__* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @intel_uncore_forcewake_get(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @SOFT_SCRATCH(i32) #1

declare dso_local i32 @intel_uncore_forcewake_put(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
