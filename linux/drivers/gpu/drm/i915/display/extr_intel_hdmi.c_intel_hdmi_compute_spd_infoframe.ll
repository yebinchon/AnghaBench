; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_spd_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_compute_spd_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.hdmi_spd_infoframe }
%struct.hdmi_spd_infoframe = type { i32 }
%struct.drm_connector_state = type { i32 }

@HDMI_INFOFRAME_TYPE_SPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Integrated gfx\00", align 1
@HDMI_SPD_SDI_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_encoder*, %struct.intel_crtc_state*, %struct.drm_connector_state*)* @intel_hdmi_compute_spd_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_compute_spd_infoframe(%struct.intel_encoder* %0, %struct.intel_crtc_state* %1, %struct.drm_connector_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.intel_crtc_state*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.hdmi_spd_infoframe*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %5, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %6, align 8
  store %struct.drm_connector_state* %2, %struct.drm_connector_state** %7, align 8
  %10 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %11 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.hdmi_spd_infoframe* %13, %struct.hdmi_spd_infoframe** %8, align 8
  %14 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %15 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = load i32, i32* @HDMI_INFOFRAME_TYPE_SPD, align 4
  %21 = call i32 @intel_hdmi_infoframe_enable(i32 %20)
  %22 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %6, align 8
  %23 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %8, align 8
  %28 = call i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %44

33:                                               ; preds = %19
  %34 = load i32, i32* @HDMI_SPD_SDI_PC, align 4
  %35 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %8, align 8
  %36 = getelementptr inbounds %struct.hdmi_spd_infoframe, %struct.hdmi_spd_infoframe* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hdmi_spd_infoframe*, %struct.hdmi_spd_infoframe** %8, align 8
  %38 = call i32 @hdmi_spd_infoframe_check(%struct.hdmi_spd_infoframe* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @WARN_ON(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %44

43:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %32, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @intel_hdmi_infoframe_enable(i32) #1

declare dso_local i32 @hdmi_spd_infoframe_init(%struct.hdmi_spd_infoframe*, i8*, i8*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hdmi_spd_infoframe_check(%struct.hdmi_spd_infoframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
