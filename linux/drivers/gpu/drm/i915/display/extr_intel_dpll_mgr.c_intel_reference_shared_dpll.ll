; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_reference_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_reference_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_dpll_hw_state = type { i32 }
%struct.intel_shared_dpll_state = type { i32, %struct.intel_dpll_hw_state }

@.str = private unnamed_addr constant [22 x i8] c"using %s for pipe %c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* @intel_reference_shared_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_reference_shared_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_shared_dpll* %2, %struct.intel_dpll_hw_state* %3) #0 {
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_shared_dpll*, align 8
  %8 = alloca %struct.intel_dpll_hw_state*, align 8
  %9 = alloca %struct.intel_shared_dpll_state*, align 8
  %10 = alloca i32, align 4
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_shared_dpll* %2, %struct.intel_shared_dpll** %7, align 8
  store %struct.intel_dpll_hw_state* %3, %struct.intel_dpll_hw_state** %8, align 8
  %11 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %7, align 8
  %12 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %17 = getelementptr inbounds %struct.intel_atomic_state, %struct.intel_atomic_state* %16, i32 0, i32 0
  %18 = call %struct.intel_shared_dpll_state* @intel_atomic_get_shared_dpll_state(i32* %17)
  store %struct.intel_shared_dpll_state* %18, %struct.intel_shared_dpll_state** %9, align 8
  %19 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %9, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %19, i64 %21
  %23 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %4
  %27 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %27, i64 %29
  %31 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %30, i32 0, i32 1
  %32 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %8, align 8
  %33 = bitcast %struct.intel_dpll_hw_state* %31 to i8*
  %34 = bitcast %struct.intel_dpll_hw_state* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %35

35:                                               ; preds = %26, %4
  %36 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %7, align 8
  %37 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pipe_name(i32 %43)
  %45 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %47 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 1, %48
  %50 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %50, i64 %52
  %54 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  ret void
}

declare dso_local %struct.intel_shared_dpll_state* @intel_atomic_get_shared_dpll_state(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32) #1

declare dso_local i32 @pipe_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
