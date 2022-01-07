; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_set_hwsp_writemask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_set_hwsp_writemask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i32 }

@RENDER_CLASS = common dso_local global i64 0, align 8
@RING_HWSTAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_set_hwsp_writemask(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @INTEL_GEN(i32 %7)
  %9 = icmp slt i32 %8, 6
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %12 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RENDER_CLASS, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %33

17:                                               ; preds = %10, %2
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @INTEL_GEN(i32 %20)
  %22 = icmp sge i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %25 = load i32, i32* @RING_HWSTAM, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ENGINE_WRITE(%struct.intel_engine_cs* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %17
  %29 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %30 = load i32, i32* @RING_HWSTAM, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @ENGINE_WRITE16(%struct.intel_engine_cs* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %16, %28, %23
  ret void
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @ENGINE_WRITE(%struct.intel_engine_cs*, i32, i32) #1

declare dso_local i32 @ENGINE_WRITE16(%struct.intel_engine_cs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
