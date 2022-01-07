; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_sor.c_tegra_sor_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.tegra_output = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }
%struct.tegra_sor_state = type { i32, i64, i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_sor = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"%u bits-per-color not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @tegra_sor_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_sor_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.tegra_output*, align 8
  %9 = alloca %struct.tegra_sor_state*, align 8
  %10 = alloca %struct.tegra_dc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tegra_sor*, align 8
  %13 = alloca %struct.drm_display_info*, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %16 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %15)
  store %struct.tegra_output* %16, %struct.tegra_output** %8, align 8
  %17 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %18 = call %struct.tegra_sor_state* @to_sor_state(%struct.drm_connector_state* %17)
  store %struct.tegra_sor_state* %18, %struct.tegra_sor_state** %9, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tegra_dc* @to_tegra_dc(i32 %21)
  store %struct.tegra_dc* %22, %struct.tegra_dc** %10, align 8
  %23 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %24 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 1000
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %11, align 8
  %29 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %30 = call %struct.tegra_sor* @to_sor(%struct.tegra_output* %29)
  store %struct.tegra_sor* %30, %struct.tegra_sor** %12, align 8
  %31 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %32 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.drm_display_info* %33, %struct.drm_display_info** %13, align 8
  %34 = load i64, i64* %11, align 8
  %35 = icmp uge i64 %34, 340000000
  br i1 %35, label %36, label %43

36:                                               ; preds = %3
  %37 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %37, i32 0, i32 0
  store i32 20, i32* %38, align 8
  %39 = load i64, i64* %11, align 8
  %40 = udiv i64 %39, 2
  %41 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %42 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  br label %49

43:                                               ; preds = %3
  %44 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %45 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %44, i32 0, i32 0
  store i32 10, i32* %45, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %48 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %36
  %50 = load %struct.tegra_dc*, %struct.tegra_dc** %10, align 8
  %51 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %52 = load %struct.tegra_sor*, %struct.tegra_sor** %12, align 8
  %53 = getelementptr inbounds %struct.tegra_sor, %struct.tegra_sor* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @tegra_dc_state_setup_clock(%struct.tegra_dc* %50, %struct.drm_crtc_state* %51, i32 %54, i64 %55, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %49
  %60 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %61 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %14, align 4
  %64 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %14, align 4
  store i32 %65, i32* %4, align 4
  br label %84

66:                                               ; preds = %49
  %67 = load %struct.drm_display_info*, %struct.drm_display_info** %13, align 8
  %68 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %76 [
    i32 8, label %70
    i32 6, label %70
  ]

70:                                               ; preds = %66, %66
  %71 = load %struct.drm_display_info*, %struct.drm_display_info** %13, align 8
  %72 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %75 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 8
  br label %83

76:                                               ; preds = %66
  %77 = load %struct.drm_display_info*, %struct.drm_display_info** %13, align 8
  %78 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load %struct.tegra_sor_state*, %struct.tegra_sor_state** %9, align 8
  %82 = getelementptr inbounds %struct.tegra_sor_state, %struct.tegra_sor_state* %81, i32 0, i32 2
  store i32 8, i32* %82, align 8
  br label %83

83:                                               ; preds = %76, %70
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %59
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_sor_state* @to_sor_state(%struct.drm_connector_state*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_sor* @to_sor(%struct.tegra_output*) #1

declare dso_local i32 @tegra_dc_state_setup_clock(%struct.tegra_dc*, %struct.drm_crtc_state*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
