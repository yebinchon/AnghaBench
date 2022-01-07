; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_ring_is_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_ring_is_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32 }

@RING_HEAD = common dso_local global i32 0, align 4
@HEAD_ADDR = common dso_local global i32 0, align 4
@RING_TAIL = common dso_local global i32 0, align 4
@TAIL_ADDR = common dso_local global i32 0, align 4
@RING_MI_MODE = common dso_local global i32 0, align 4
@MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_engine_cs*)* @ring_is_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ring_is_idle(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @I915_SELFTEST_ONLY(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %50

14:                                               ; preds = %1
  %15 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %16 = call i32 @intel_engine_pm_get_if_awake(%struct.intel_engine_cs* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %50

19:                                               ; preds = %14
  %20 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %21 = load i32, i32* @RING_HEAD, align 4
  %22 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %20, i32 %21)
  %23 = load i32, i32* @HEAD_ADDR, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %26 = load i32, i32* @RING_TAIL, align 4
  %27 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %25, i32 %26)
  %28 = load i32, i32* @TAIL_ADDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %19
  %33 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %34 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @INTEL_GEN(i32 %35)
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %40 = load i32, i32* @RING_MI_MODE, align 4
  %41 = call i32 @ENGINE_READ(%struct.intel_engine_cs* %39, i32 %40)
  %42 = load i32, i32* @MODE_IDLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %38, %32
  %47 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %48 = call i32 @intel_engine_pm_put(%struct.intel_engine_cs* %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %18, %13
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @I915_SELFTEST_ONLY(i32) #1

declare dso_local i32 @intel_engine_pm_get_if_awake(%struct.intel_engine_cs*) #1

declare dso_local i32 @ENGINE_READ(%struct.intel_engine_cs*, i32) #1

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @intel_engine_pm_put(%struct.intel_engine_cs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
