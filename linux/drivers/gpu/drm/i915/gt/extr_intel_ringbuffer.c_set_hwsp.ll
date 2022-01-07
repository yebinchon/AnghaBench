; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_set_hwsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_ringbuffer.c_set_hwsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }

@RENDER_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@BLT_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@BSD_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@VEBOX_HWS_PGA_GEN7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*, i32)* @set_hwsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hwsp(%struct.intel_engine_cs* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_engine_cs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 2
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  store %struct.drm_i915_private* %9, %struct.drm_i915_private** %5, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %11 = call i64 @IS_GEN(%struct.drm_i915_private* %10, i32 7)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %2
  %14 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %15 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %17 [
    i32 130, label %22
    i32 131, label %24
    i32 129, label %26
    i32 128, label %28
  ]

17:                                               ; preds = %13
  %18 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %19 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @GEM_BUG_ON(i32 %20)
  br label %22

22:                                               ; preds = %13, %17
  %23 = load i32, i32* @RENDER_HWS_PGA_GEN7, align 4
  store i32 %23, i32* %6, align 4
  br label %30

24:                                               ; preds = %13
  %25 = load i32, i32* @BLT_HWS_PGA_GEN7, align 4
  store i32 %25, i32* %6, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* @BSD_HWS_PGA_GEN7, align 4
  store i32 %27, i32* %6, align 4
  br label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @VEBOX_HWS_PGA_GEN7, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %26, %24, %22
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %33 = call i64 @IS_GEN(%struct.drm_i915_private* %32, i32 6)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %37 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @RING_HWS_PGA_GEN6(i32 %38)
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %31
  %41 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %3, align 8
  %42 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @RING_HWS_PGA(i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @POSTING_READ(i32 %50)
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @RING_HWS_PGA_GEN6(i32) #1

declare dso_local i32 @RING_HWS_PGA(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
