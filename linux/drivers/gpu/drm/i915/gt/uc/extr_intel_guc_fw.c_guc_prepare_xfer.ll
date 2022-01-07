; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_prepare_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/uc/extr_intel_guc_fw.c_guc_prepare_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@GUC_DISABLE_SRAM_INIT_TO_ZEROES = common dso_local global i32 0, align 4
@GUC_ENABLE_READ_CACHE_LOGIC = common dso_local global i32 0, align 4
@GUC_ENABLE_MIA_CACHING = common dso_local global i32 0, align 4
@GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA = common dso_local global i32 0, align 4
@GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA = common dso_local global i32 0, align 4
@GUC_ENABLE_MIA_CLOCK_GATING = common dso_local global i32 0, align 4
@GUC_SHIM_CONTROL = common dso_local global i32 0, align 4
@GEN9LP_GT_PM_CONFIG = common dso_local global i32 0, align 4
@GT_DOORBELL_ENABLE = common dso_local global i32 0, align 4
@GEN9_GT_PM_CONFIG = common dso_local global i32 0, align 4
@GEN7_MISCCPCTL = common dso_local global i32 0, align 4
@GEN8_DOP_CLOCK_GATE_GUC_ENABLE = common dso_local global i32 0, align 4
@GUC_ARAT_C6DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*)* @guc_prepare_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guc_prepare_xfer(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %4 = load i32, i32* @GUC_DISABLE_SRAM_INIT_TO_ZEROES, align 4
  %5 = load i32, i32* @GUC_ENABLE_READ_CACHE_LOGIC, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @GUC_ENABLE_MIA_CACHING, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @GUC_ENABLE_READ_CACHE_FOR_SRAM_DATA, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @GUC_ENABLE_READ_CACHE_FOR_WOPCM_DATA, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @GUC_ENABLE_MIA_CLOCK_GATING, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %3, align 4
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %16 = load i32, i32* @GUC_SHIM_CONTROL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @intel_uncore_write(%struct.intel_uncore* %15, i32 %16, i32 %17)
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %20 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @IS_GEN9_LP(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %26 = load i32, i32* @GEN9LP_GT_PM_CONFIG, align 4
  %27 = load i32, i32* @GT_DOORBELL_ENABLE, align 4
  %28 = call i32 @intel_uncore_write(%struct.intel_uncore* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %31 = load i32, i32* @GEN9_GT_PM_CONFIG, align 4
  %32 = load i32, i32* @GT_DOORBELL_ENABLE, align 4
  %33 = call i32 @intel_uncore_write(%struct.intel_uncore* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %36 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @IS_GEN(i32 %37, i32 9)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %42 = load i32, i32* @GEN7_MISCCPCTL, align 4
  %43 = load i32, i32* @GEN8_DOP_CLOCK_GATE_GUC_ENABLE, align 4
  %44 = call i32 @intel_uncore_rmw(%struct.intel_uncore* %41, i32 %42, i32 0, i32 %43)
  %45 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %46 = load i32, i32* @GUC_ARAT_C6DIS, align 4
  %47 = call i32 @intel_uncore_write(%struct.intel_uncore* %45, i32 %46, i32 511)
  br label %48

48:                                               ; preds = %40, %34
  ret void
}

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i64 @IS_GEN9_LP(i32) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @intel_uncore_rmw(%struct.intel_uncore*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
