; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_atomic_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_encoder_atomic_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.tegra_output = type { i32 }
%struct.tegra_dsi_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_dc = type { i32 }
%struct.tegra_dsi = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"mul: %u, div: %u, lanes: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"format: %u, vrefresh: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bclk: %lu\0A\00", align 1
@USEC_PER_SEC = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to validate D-PHY timing: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"failed to setup CRTC state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_crtc_state*, %struct.drm_connector_state*)* @tegra_dsi_encoder_atomic_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_encoder_atomic_check(%struct.drm_encoder* %0, %struct.drm_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.tegra_output*, align 8
  %9 = alloca %struct.tegra_dsi_state*, align 8
  %10 = alloca %struct.tegra_dc*, align 8
  %11 = alloca %struct.tegra_dsi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %16 = call %struct.tegra_output* @encoder_to_output(%struct.drm_encoder* %15)
  store %struct.tegra_output* %16, %struct.tegra_output** %8, align 8
  %17 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %18 = call %struct.tegra_dsi_state* @to_dsi_state(%struct.drm_connector_state* %17)
  store %struct.tegra_dsi_state* %18, %struct.tegra_dsi_state** %9, align 8
  %19 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.tegra_dc* @to_tegra_dc(i32 %21)
  store %struct.tegra_dc* %22, %struct.tegra_dc** %10, align 8
  %23 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %24 = call %struct.tegra_dsi* @to_dsi(%struct.tegra_output* %23)
  store %struct.tegra_dsi* %24, %struct.tegra_dsi** %11, align 8
  %25 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %26 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %31 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.tegra_dsi*, %struct.tegra_dsi** %11, align 8
  %33 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %36 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %35, i32 0, i32 1
  %37 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %38 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %37, i32 0, i32 2
  %39 = call i32 @tegra_dsi_get_muldiv(i32 %34, i32* %36, i32* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %4, align 4
  br label %177

44:                                               ; preds = %3
  %45 = load %struct.tegra_dsi*, %struct.tegra_dsi** %11, align 8
  %46 = call i32 @tegra_dsi_get_lanes(%struct.tegra_dsi* %45)
  %47 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %48 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tegra_dsi*, %struct.tegra_dsi** %11, align 8
  %50 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %53 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %52, i32 0, i32 8
  %54 = call i32 @tegra_dsi_get_format(i32 %51, i32* %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* %14, align 4
  store i32 %58, i32* %4, align 4
  br label %177

59:                                               ; preds = %44
  %60 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %61 = getelementptr inbounds %struct.drm_crtc_state, %struct.drm_crtc_state* %60, i32 0, i32 0
  %62 = call i32 @drm_mode_vrefresh(%struct.TYPE_2__* %61)
  %63 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %64 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %66 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %69 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %67, %70
  %72 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %73 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %76 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = mul nsw i32 %74, %77
  %79 = sdiv i32 %71, %78
  %80 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %81 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %83 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %86 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %89 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %84, i32 %87, i32 %90)
  %92 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %93 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %96 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97)
  %99 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %100 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %104 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 8
  %107 = load i64, i64* @USEC_PER_SEC, align 8
  %108 = call i64 @DIV_ROUND_UP(i32 %106, i64 %107)
  %109 = load i64, i64* @USEC_PER_SEC, align 8
  %110 = mul i64 %108, %109
  store i64 %110, i64* %13, align 8
  %111 = load i32, i32* @NSEC_PER_SEC, align 4
  %112 = load i64, i64* %13, align 8
  %113 = call i32 @DIV_ROUND_CLOSEST(i32 %111, i64 %112)
  %114 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %115 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %117 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %116, i32 0, i32 6
  %118 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %119 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mipi_dphy_timing_get_default(i32* %117, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %59
  %125 = load i32, i32* %14, align 4
  store i32 %125, i32* %4, align 4
  br label %177

126:                                              ; preds = %59
  %127 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %128 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %127, i32 0, i32 6
  %129 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %130 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mipi_dphy_timing_validate(i32* %128, i32 %131)
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %126
  %136 = load %struct.tegra_dsi*, %struct.tegra_dsi** %11, align 8
  %137 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = call i32 @dev_err(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* %14, align 4
  store i32 %141, i32* %4, align 4
  br label %177

142:                                              ; preds = %126
  %143 = load i64, i64* %13, align 8
  %144 = udiv i64 %143, 2
  store i64 %144, i64* %13, align 8
  %145 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %146 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 8, %147
  %149 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %150 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.tegra_dsi_state*, %struct.tegra_dsi_state** %9, align 8
  %153 = getelementptr inbounds %struct.tegra_dsi_state, %struct.tegra_dsi_state* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %151, %154
  %156 = sdiv i32 %148, %155
  %157 = sub nsw i32 %156, 2
  store i32 %157, i32* %12, align 4
  %158 = load %struct.tegra_dc*, %struct.tegra_dc** %10, align 8
  %159 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %6, align 8
  %160 = load %struct.tegra_dsi*, %struct.tegra_dsi** %11, align 8
  %161 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %13, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @tegra_dc_state_setup_clock(%struct.tegra_dc* %158, %struct.drm_crtc_state* %159, i32 %162, i64 %163, i32 %164)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %142
  %169 = load %struct.tegra_output*, %struct.tegra_output** %8, align 8
  %170 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %4, align 4
  br label %177

175:                                              ; preds = %142
  %176 = load i32, i32* %14, align 4
  store i32 %176, i32* %4, align 4
  br label %177

177:                                              ; preds = %175, %168, %135, %124, %57, %42
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.tegra_output* @encoder_to_output(%struct.drm_encoder*) #1

declare dso_local %struct.tegra_dsi_state* @to_dsi_state(%struct.drm_connector_state*) #1

declare dso_local %struct.tegra_dc* @to_tegra_dc(i32) #1

declare dso_local %struct.tegra_dsi* @to_dsi(%struct.tegra_output*) #1

declare dso_local i32 @tegra_dsi_get_muldiv(i32, i32*, i32*) #1

declare dso_local i32 @tegra_dsi_get_lanes(%struct.tegra_dsi*) #1

declare dso_local i32 @tegra_dsi_get_format(i32, i32*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.TYPE_2__*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, ...) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i64) #1

declare dso_local i32 @mipi_dphy_timing_get_default(i32*, i32) #1

declare dso_local i32 @mipi_dphy_timing_validate(i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tegra_dc_state_setup_clock(%struct.tegra_dc*, %struct.drm_crtc_state*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
