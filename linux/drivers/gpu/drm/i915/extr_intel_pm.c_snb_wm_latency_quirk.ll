; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_snb_wm_latency_quirk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_snb_wm_latency_quirk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"WM latency values increased to avoid potential underruns\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"Primary\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Sprite\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Cursor\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @snb_wm_latency_quirk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snb_wm_latency_quirk(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ilk_increase_wm_latency(%struct.drm_i915_private* %4, i32 %8, i32 12)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ilk_increase_wm_latency(%struct.drm_i915_private* %10, i32 %14, i32 12)
  %16 = or i32 %9, %15
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ilk_increase_wm_latency(%struct.drm_i915_private* %17, i32 %21, i32 12)
  %23 = or i32 %16, %22
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %47

27:                                               ; preds = %1
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @intel_print_wm_latency(%struct.drm_i915_private* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @intel_print_wm_latency(%struct.drm_i915_private* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %39)
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @intel_print_wm_latency(%struct.drm_i915_private* %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %27, %26
  ret void
}

declare dso_local i32 @ilk_increase_wm_latency(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @intel_print_wm_latency(%struct.drm_i915_private*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
