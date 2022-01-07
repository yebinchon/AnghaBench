; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_modeset_calc_cdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_bdw_modeset_calc_cdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*)* @bdw_modeset_calc_cdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdw_modeset_calc_cdclk(%struct.intel_atomic_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  %6 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %7 = call i32 @intel_compute_min_cdclk(%struct.intel_atomic_state* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bdw_calc_cdclk(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %17 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @bdw_calc_voltage_level(i32 %20)
  %22 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  store i8* %21, i8** %25, align 8
  %26 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %12
  %31 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %32 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bdw_calc_cdclk(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %38 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i8* @bdw_calc_voltage_level(i32 %41)
  %43 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %44 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i8* %42, i8** %46, align 8
  br label %56

47:                                               ; preds = %12
  %48 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %49 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %52 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = bitcast %struct.TYPE_3__* %50 to i8*
  %55 = bitcast %struct.TYPE_3__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %54, i8* align 8 %55, i64 16, i1 false)
  br label %56

56:                                               ; preds = %47, %30
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @intel_compute_min_cdclk(%struct.intel_atomic_state*) #1

declare dso_local i32 @bdw_calc_cdclk(i32) #1

declare dso_local i8* @bdw_calc_voltage_level(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
