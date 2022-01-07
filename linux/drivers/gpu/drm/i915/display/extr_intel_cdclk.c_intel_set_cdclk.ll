; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_set_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_set_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.intel_cdclk_state }
%struct.intel_cdclk_state = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)* }
%struct.drm_i915_private.0 = type opaque

@.str = private unnamed_addr constant [18 x i8] c"Changing CDCLK to\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cdclk state doesn't match!\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"[hw state]\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"[sw state]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_cdclk_state*, i32)* @intel_set_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_set_cdclk(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_cdclk_state*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %11 = call i32 @intel_cdclk_changed(%struct.intel_cdclk_state* %9, %struct.intel_cdclk_state* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %51

14:                                               ; preds = %3
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)*, i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %14
  br label %51

25:                                               ; preds = %14
  %26 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %27 = call i32 @intel_dump_cdclk_state(%struct.intel_cdclk_state* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)*, i32 (%struct.drm_i915_private.0*, %struct.intel_cdclk_state*, i32)** %30, align 8
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = bitcast %struct.drm_i915_private* %32 to %struct.drm_i915_private.0*
  %34 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 %31(%struct.drm_i915_private.0* %33, %struct.intel_cdclk_state* %34, i32 %35)
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %38 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %41 = call i32 @intel_cdclk_changed(%struct.intel_cdclk_state* %39, %struct.intel_cdclk_state* %40)
  %42 = call i64 @WARN(i32 %41, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %25
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @intel_dump_cdclk_state(%struct.intel_cdclk_state* %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %5, align 8
  %50 = call i32 @intel_dump_cdclk_state(%struct.intel_cdclk_state* %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %51

51:                                               ; preds = %13, %24, %44, %25
  ret void
}

declare dso_local i32 @intel_cdclk_changed(%struct.intel_cdclk_state*, %struct.intel_cdclk_state*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @intel_dump_cdclk_state(%struct.intel_cdclk_state*, i8*) #1

declare dso_local i64 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
