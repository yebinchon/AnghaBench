; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_hdmi = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @tegra_hdmi_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.tegra_output*, align 8
  %9 = alloca %struct.tegra_dc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tegra_hdmi*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %13 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %14 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %13)
  store %struct.tegra_output* %14, %struct.tegra_output** %8, align 8
  %15 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %16 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.tegra_dc* @to_tegra_dc(i32 %17)
  store %struct.tegra_dc* %18, %struct.tegra_dc** %9, align 8
  %19 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %20 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %10, align 8
  %25 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %26 = call %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output* %25)
  store %struct.tegra_hdmi* %26, %struct.tegra_hdmi** %11, align 8
  %27 = load %struct.tegra_dc*, %struct.tegra_dc** %9, align 8
  %28 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %29 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %11, align 8
  %30 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @tegra_dc_state_setup_clock(%struct.tegra_dc* %27, %struct.drm_crtc_state* %28, i32 %31, i64 %32, i32 0)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %38 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %36
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_hdmi* @to_hdmi(%struct.tegra_output*) #1

declare dso_local i32 @tegra_dc_state_setup_clock(%struct.tegra_dc*, %struct.drm_crtc_state*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
