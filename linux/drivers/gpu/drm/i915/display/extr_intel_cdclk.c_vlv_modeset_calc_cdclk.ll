; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_vlv_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_vlv_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_6__, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @vlv_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %8 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %13 = call i32 @intel_compute_min_cdclk(%struct.intel_atomic_state* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %67

18:                                               ; preds = %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @vlv_calc_cdclk(%struct.drm_i915_private* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %24 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 8
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @vlv_calc_voltage_level(%struct.drm_i915_private* %27, i32 %28)
  %30 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %31 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  store i8* %29, i8** %33, align 8
  %34 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %35 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %18
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %40 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %41 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @vlv_calc_cdclk(%struct.drm_i915_private* %39, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %47 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @vlv_calc_voltage_level(%struct.drm_i915_private* %50, i32 %51)
  %53 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %54 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  store i8* %52, i8** %56, align 8
  br label %66

57:                                               ; preds = %18
  %58 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %59 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %62 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_5__* %60 to i8*
  %65 = bitcast %struct.TYPE_5__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 16, i1 false)
  br label %66

66:                                               ; preds = %57, %38
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i32 @vlv_calc_cdclk(%struct.drm_i915_private*, i32) #1

declare dso_local i8* @vlv_calc_voltage_level(%struct.drm_i915_private*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
