; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_rgb_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_rgb.c_tegra_rgb_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_rgb = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @tegra_rgb_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_rgb_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.tegra_output*, align 8
  %9 = alloca %struct.tegra_dc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tegra_rgb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %14 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %15 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %14)
  store %struct.tegra_output* %15, %struct.tegra_output** %8, align 8
  %16 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.tegra_dc* @to_tegra_dc(i32 %18)
  store %struct.tegra_dc* %19, %struct.tegra_dc** %9, align 8
  %20 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %21 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %10, align 8
  %26 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %27 = call %struct.tegra_rgb* @to_rgb(%struct.tegra_output* %26)
  store %struct.tegra_rgb* %27, %struct.tegra_rgb** %11, align 8
  %28 = load %struct.tegra_rgb*, %struct.tegra_rgb** %11, align 8
  %29 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_get_rate(i32 %30)
  %32 = mul nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %10, align 8
  %35 = udiv i64 %33, %34
  %36 = sub i64 %35, 2
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %12, align 4
  store i64 0, i64* %10, align 8
  %38 = load %struct.tegra_dc*, %struct.tegra_dc** %9, align 8
  %39 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %40 = load %struct.tegra_rgb*, %struct.tegra_rgb** %11, align 8
  %41 = getelementptr inbounds %struct.tegra_rgb, %struct.tegra_rgb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @tegra_dc_state_setup_clock(%struct.tegra_dc* %38, %struct.drm_crtc_state* %39, i32 %42, i64 %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %50 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %3
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %48
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_rgb* @to_rgb(%struct.tegra_output*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @tegra_dc_state_setup_clock(%struct.tegra_dc*, %struct.drm_crtc_state*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
