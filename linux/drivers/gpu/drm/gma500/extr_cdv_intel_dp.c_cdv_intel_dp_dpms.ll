; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_dpms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_dpms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@DP_PORT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, i32)* @cdv_intel_dp_dpms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_dpms(%struct.drm_encoder* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gma_encoder*, align 8
  %6 = alloca %struct.cdv_intel_dp*, align 8
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %10)
  store %struct.gma_encoder* %11, %struct.gma_encoder** %5, align 8
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %13 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %12, i32 0, i32 0
  %14 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %13, align 8
  store %struct.cdv_intel_dp* %14, %struct.cdv_intel_dp** %6, align 8
  %15 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %16 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %7, align 8
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %6, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @REG_READ(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %23 = call i32 @is_edp(%struct.gma_encoder* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %32 = call i32 @cdv_intel_edp_backlight_off(%struct.gma_encoder* %31)
  %33 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %34 = call i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @cdv_intel_dp_sink_dpms(%struct.gma_encoder* %36, i32 %37)
  %39 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %40 = call i32 @cdv_intel_dp_link_down(%struct.gma_encoder* %39)
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %45 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %44)
  %46 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %47 = call i32 @cdv_intel_edp_panel_off(%struct.gma_encoder* %46)
  br label %48

48:                                               ; preds = %43, %35
  br label %75

49:                                               ; preds = %2
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %54 = call i32 @cdv_intel_edp_panel_on(%struct.gma_encoder* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @cdv_intel_dp_sink_dpms(%struct.gma_encoder* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @DP_PORT_EN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %55
  %64 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %65 = call i32 @cdv_intel_dp_start_link_train(%struct.gma_encoder* %64)
  %66 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %67 = call i32 @cdv_intel_dp_complete_link_train(%struct.gma_encoder* %66)
  br label %68

68:                                               ; preds = %63, %55
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.gma_encoder*, %struct.gma_encoder** %5, align 8
  %73 = call i32 @cdv_intel_edp_backlight_on(%struct.gma_encoder* %72)
  br label %74

74:                                               ; preds = %71, %68
  br label %75

75:                                               ; preds = %74, %48
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @REG_READ(i32) #1

declare dso_local i32 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_backlight_off(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_sink_dpms(%struct.gma_encoder*, i32) #1

declare dso_local i32 @cdv_intel_dp_link_down(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_off(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_on(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_start_link_train(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_complete_link_train(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_backlight_on(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
