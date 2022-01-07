; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_put_dplls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_put_dplls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_crtc_state = type { %struct.icl_port_dpll*, i32* }
%struct.icl_port_dpll = type { i32* }

@ICL_PORT_DPLL_DEFAULT = common dso_local global i32 0, align 4
@ICL_PORT_DPLL_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_atomic_state*, %struct.intel_crtc*)* @icl_put_dplls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_put_dplls(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1) #0 {
  %3 = alloca %struct.intel_atomic_state*, align 8
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icl_port_dpll*, align 8
  %9 = alloca %struct.icl_port_dpll*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %3, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %4, align 8
  %10 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %12 = call %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state* %10, %struct.intel_crtc* %11)
  store %struct.intel_crtc_state* %12, %struct.intel_crtc_state** %5, align 8
  %13 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %14 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %15 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %13, %struct.intel_crtc* %14)
  store %struct.intel_crtc_state* %15, %struct.intel_crtc_state** %6, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @ICL_PORT_DPLL_DEFAULT, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %50, %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ICL_PORT_DPLL_COUNT, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %53

23:                                               ; preds = %19
  %24 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %25 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %24, i32 0, i32 0
  %26 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %26, i64 %28
  store %struct.icl_port_dpll* %29, %struct.icl_port_dpll** %8, align 8
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %32, i64 %34
  store %struct.icl_port_dpll* %35, %struct.icl_port_dpll** %9, align 8
  %36 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %9, align 8
  %37 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  %38 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %8, align 8
  %39 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %23
  br label %50

43:                                               ; preds = %23
  %44 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %3, align 8
  %45 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %46 = load %struct.icl_port_dpll*, %struct.icl_port_dpll** %8, align 8
  %47 = getelementptr inbounds %struct.icl_port_dpll, %struct.icl_port_dpll* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @intel_unreference_shared_dpll(%struct.intel_atomic_state* %44, %struct.intel_crtc* %45, i32* %48)
  br label %50

50:                                               ; preds = %43, %42
  %51 = load i32, i32* %7, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %19

53:                                               ; preds = %19
  ret void
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_old_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @intel_unreference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
