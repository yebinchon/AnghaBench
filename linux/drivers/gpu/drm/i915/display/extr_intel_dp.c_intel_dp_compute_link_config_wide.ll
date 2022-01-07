; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_compute_link_config_wide.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_compute_link_config_wide.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32* }
%struct.intel_crtc_state = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.link_config_limits = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dp*, %struct.intel_crtc_state*, %struct.link_config_limits*)* @intel_dp_compute_link_config_wide to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_dp_compute_link_config_wide(%struct.intel_dp* %0, %struct.intel_crtc_state* %1, %struct.link_config_limits* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_dp*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.link_config_limits*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.link_config_limits* %2, %struct.link_config_limits** %7, align 8
  %16 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %17 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.drm_display_mode* %18, %struct.drm_display_mode** %8, align 8
  %19 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %20 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  br label %22

22:                                               ; preds = %89, %3
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %25 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %92

28:                                               ; preds = %22
  %29 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @intel_dp_output_bpp(%struct.intel_crtc_state* %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %15, align 4
  %36 = call i32 @intel_dp_link_required(i32 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %38 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %85, %28
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %43 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %41, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %40
  %47 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %48 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %81, %46
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.link_config_limits*, %struct.link_config_limits** %7, align 8
  %53 = getelementptr inbounds %struct.link_config_limits, %struct.link_config_limits* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp sle i32 %51, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.intel_dp*, %struct.intel_dp** %5, align 8
  %58 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @intel_dp_max_data_rate(i32 %64, i32 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %56
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %73 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %76 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %79 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %95

80:                                               ; preds = %56
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %11, align 4
  %83 = shl i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %50

84:                                               ; preds = %50
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %40

88:                                               ; preds = %40
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 %90, 6
  store i32 %91, i32* %9, align 4
  br label %22

92:                                               ; preds = %22
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %92, %70
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @intel_dp_output_bpp(%struct.intel_crtc_state*, i32) #1

declare dso_local i32 @intel_dp_link_required(i32, i32) #1

declare dso_local i32 @intel_dp_max_data_rate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
