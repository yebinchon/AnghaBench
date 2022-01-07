; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_can_store_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engine_can_store_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32 }

@VIDEO_DECODE_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engine_can_store_dword(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_engine_cs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @INTEL_GEN(i32 %6)
  switch i32 %7, label %32 [
    i32 2, label %8
    i32 3, label %9
    i32 6, label %25
  ]

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %11 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @IS_I915G(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %17 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @IS_I915GM(i32 %18)
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ true, %9 ], [ %20, %15 ]
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %27 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @VIDEO_DECODE_CLASS, align 4
  %30 = icmp ne i32 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %25, %21, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @INTEL_GEN(i32) #1

declare dso_local i32 @IS_I915G(i32) #1

declare dso_local i32 @IS_I915GM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
