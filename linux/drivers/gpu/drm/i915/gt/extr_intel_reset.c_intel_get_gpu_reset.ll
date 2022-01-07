; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_get_gpu_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_reset.c_intel_get_gpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@gen8_reset_engines = common dso_local global i32* null, align 8
@gen6_reset_engines = common dso_local global i32* null, align 8
@ironlake_do_reset = common dso_local global i32* null, align 8
@g4x_do_reset = common dso_local global i32* null, align 8
@g33_do_reset = common dso_local global i32* null, align 8
@i915_do_reset = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.drm_i915_private*)* @intel_get_gpu_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @intel_get_gpu_reset(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %5 = call i32 @INTEL_GEN(%struct.drm_i915_private* %4)
  %6 = icmp sge i32 %5, 8
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32*, i32** @gen8_reset_engines, align 8
  store i32* %8, i32** %2, align 8
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = call i32 @INTEL_GEN(%struct.drm_i915_private* %10)
  %12 = icmp sge i32 %11, 6
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32*, i32** @gen6_reset_engines, align 8
  store i32* %14, i32** %2, align 8
  br label %44

15:                                               ; preds = %9
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i32 @INTEL_GEN(%struct.drm_i915_private* %16)
  %18 = icmp sge i32 %17, 5
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32*, i32** @ironlake_do_reset, align 8
  store i32* %20, i32** %2, align 8
  br label %44

21:                                               ; preds = %15
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = call i64 @IS_G4X(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32*, i32** @g4x_do_reset, align 8
  store i32* %26, i32** %2, align 8
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = call i64 @IS_G33(%struct.drm_i915_private* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31, %27
  %36 = load i32*, i32** @g33_do_reset, align 8
  store i32* %36, i32** %2, align 8
  br label %44

37:                                               ; preds = %31
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %39 = call i32 @INTEL_GEN(%struct.drm_i915_private* %38)
  %40 = icmp sge i32 %39, 3
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32*, i32** @i915_do_reset, align 8
  store i32* %42, i32** %2, align 8
  br label %44

43:                                               ; preds = %37
  store i32* null, i32** %2, align 8
  br label %44

44:                                               ; preds = %43, %41, %35, %25, %19, %13, %7
  %45 = load i32*, i32** %2, align 8
  ret i32* %45
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_G33(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
