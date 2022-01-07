; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_uncore_raw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_uncore_raw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@gen5 = common dso_local global i32 0, align 4
@gen2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*)* @uncore_raw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uncore_raw_init(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %3 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %4 = call i32 @intel_uncore_has_forcewake(%struct.intel_uncore* %3)
  %5 = call i32 @GEM_BUG_ON(i32 %4)
  %6 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %7 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @IS_GEN(i32 %8, i32 5)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %13 = load i32, i32* @gen5, align 4
  %14 = call i32 @ASSIGN_RAW_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %12, i32 %13)
  %15 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %16 = load i32, i32* @gen5, align 4
  %17 = call i32 @ASSIGN_RAW_READ_MMIO_VFUNCS(%struct.intel_uncore* %15, i32 %16)
  br label %25

18:                                               ; preds = %1
  %19 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %20 = load i32, i32* @gen2, align 4
  %21 = call i32 @ASSIGN_RAW_WRITE_MMIO_VFUNCS(%struct.intel_uncore* %19, i32 %20)
  %22 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %23 = load i32, i32* @gen2, align 4
  %24 = call i32 @ASSIGN_RAW_READ_MMIO_VFUNCS(%struct.intel_uncore* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %11
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_has_forcewake(%struct.intel_uncore*) #1

declare dso_local i64 @IS_GEN(i32, i32) #1

declare dso_local i32 @ASSIGN_RAW_WRITE_MMIO_VFUNCS(%struct.intel_uncore*, i32) #1

declare dso_local i32 @ASSIGN_RAW_READ_MMIO_VFUNCS(%struct.intel_uncore*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
