; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_get_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_get_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_atomic_state = type { i32 }
%struct.intel_crtc = type { i32 }
%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { i32, %struct.intel_shared_dpll*, %struct.TYPE_4__ }
%struct.intel_shared_dpll = type { i32 }
%struct.TYPE_4__ = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_ANALOG = common dso_local global i32 0, align 4
@SPLL_PLL_ENABLE = common dso_local global i32 0, align 4
@SPLL_FREQ_1350MHz = common dso_local global i32 0, align 4
@SPLL_REF_MUXED_SSC = common dso_local global i32 0, align 4
@DPLL_ID_SPLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_encoder*)* @hsw_get_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_get_dpll(%struct.intel_atomic_state* %0, %struct.intel_crtc* %1, %struct.intel_encoder* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_atomic_state*, align 8
  %6 = alloca %struct.intel_crtc*, align 8
  %7 = alloca %struct.intel_encoder*, align 8
  %8 = alloca %struct.intel_crtc_state*, align 8
  %9 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.intel_atomic_state* %0, %struct.intel_atomic_state** %5, align 8
  store %struct.intel_crtc* %1, %struct.intel_crtc** %6, align 8
  store %struct.intel_encoder* %2, %struct.intel_encoder** %7, align 8
  %10 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %11 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %12 = call %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state* %10, %struct.intel_crtc* %11)
  store %struct.intel_crtc_state* %12, %struct.intel_crtc_state** %8, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  %15 = call i32 @memset(%struct.TYPE_4__* %14, i32 0, i32 4)
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %17 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %18 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %22 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %23 = call %struct.intel_shared_dpll* @hsw_ddi_hdmi_get_dpll(%struct.intel_atomic_state* %21, %struct.intel_crtc* %22)
  store %struct.intel_shared_dpll* %23, %struct.intel_shared_dpll** %9, align 8
  br label %65

24:                                               ; preds = %3
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %26 = call i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %30 = call %struct.intel_shared_dpll* @hsw_ddi_dp_get_dpll(%struct.intel_crtc_state* %29)
  store %struct.intel_shared_dpll* %30, %struct.intel_shared_dpll** %9, align 8
  br label %64

31:                                               ; preds = %24
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %33 = load i32, i32* @INTEL_OUTPUT_ANALOG, align 4
  %34 = call i64 @intel_crtc_has_type(%struct.intel_crtc_state* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %31
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sdiv i32 %39, 2
  %41 = icmp ne i32 %40, 135000
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %79

46:                                               ; preds = %36
  %47 = load i32, i32* @SPLL_PLL_ENABLE, align 4
  %48 = load i32, i32* @SPLL_FREQ_1350MHz, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SPLL_REF_MUXED_SSC, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %53 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %56 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %57 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %58 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %57, i32 0, i32 2
  %59 = load i32, i32* @DPLL_ID_SPLL, align 4
  %60 = load i32, i32* @DPLL_ID_SPLL, align 4
  %61 = call %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state* %55, %struct.intel_crtc* %56, %struct.TYPE_4__* %58, i32 %59, i32 %60)
  store %struct.intel_shared_dpll* %61, %struct.intel_shared_dpll** %9, align 8
  br label %63

62:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %79

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %63, %28
  br label %65

65:                                               ; preds = %64, %20
  %66 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %67 = icmp ne %struct.intel_shared_dpll* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  store i32 0, i32* %4, align 4
  br label %79

69:                                               ; preds = %65
  %70 = load %struct.intel_atomic_state*, %struct.intel_atomic_state** %5, align 8
  %71 = load %struct.intel_crtc*, %struct.intel_crtc** %6, align 8
  %72 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 2
  %75 = call i32 @intel_reference_shared_dpll(%struct.intel_atomic_state* %70, %struct.intel_crtc* %71, %struct.intel_shared_dpll* %72, %struct.TYPE_4__* %74)
  %76 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %9, align 8
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %8, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 1
  store %struct.intel_shared_dpll* %76, %struct.intel_shared_dpll** %78, align 8
  store i32 1, i32* %4, align 4
  br label %79

79:                                               ; preds = %69, %68, %62, %45
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.intel_crtc_state* @intel_atomic_get_new_crtc_state(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @intel_crtc_has_type(%struct.intel_crtc_state*, i32) #1

declare dso_local %struct.intel_shared_dpll* @hsw_ddi_hdmi_get_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*) #1

declare dso_local i64 @intel_crtc_has_dp_encoder(%struct.intel_crtc_state*) #1

declare dso_local %struct.intel_shared_dpll* @hsw_ddi_dp_get_dpll(%struct.intel_crtc_state*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.intel_shared_dpll* @intel_find_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @intel_reference_shared_dpll(%struct.intel_atomic_state*, %struct.intel_crtc*, %struct.intel_shared_dpll*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
