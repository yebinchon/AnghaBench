; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_skl_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @skl_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %7 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %8 = call i32 @intel_compute_min_cdclk(%struct.intel_atomic_state* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %72

13:                                               ; preds = %1
  %14 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %15 = call i32 @skl_dpll0_vco(%struct.intel_atomic_state* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @skl_calc_cdclk(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %21 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %19, i32* %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %26 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @skl_calc_voltage_level(i32 %29)
  %31 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %32 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i8* %30, i8** %34, align 8
  %35 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %36 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %62, label %39

39:                                               ; preds = %13
  %40 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %41 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @skl_calc_cdclk(i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %48 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i8* @skl_calc_voltage_level(i32 %56)
  %58 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %59 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i8* %57, i8** %61, align 8
  br label %71

62:                                               ; preds = %13
  %63 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %64 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %67 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = bitcast %struct.TYPE_3__* %65 to i8*
  %70 = bitcast %struct.TYPE_3__* %68 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false)
  br label %71

71:                                               ; preds = %62, %39
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %11
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i32 @skl_dpll0_vco(%struct.intel_atomic_state*) #1

declare dso_local i32 @skl_calc_cdclk(i32, i32) #1

declare dso_local i8* @skl_calc_voltage_level(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
