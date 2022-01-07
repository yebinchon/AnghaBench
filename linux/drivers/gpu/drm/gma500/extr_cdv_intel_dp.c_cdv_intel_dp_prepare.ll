; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.gma_encoder = type { i32 }

@DRM_MODE_DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*)* @cdv_intel_dp_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdv_intel_dp_prepare(%struct.drm_encoder* %0) #0 {
  %2 = alloca %struct.drm_encoder*, align 8
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %2, align 8
  %5 = load %struct.drm_encoder*, %struct.drm_encoder** %2, align 8
  %6 = call %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder* %5)
  store %struct.gma_encoder* %6, %struct.gma_encoder** %3, align 8
  %7 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %8 = call i32 @is_edp(%struct.gma_encoder* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %13 = call i32 @cdv_intel_edp_backlight_off(%struct.gma_encoder* %12)
  %14 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %15 = call i32 @cdv_intel_edp_panel_off(%struct.gma_encoder* %14)
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %17 = call i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %16)
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %20 = load i32, i32* @DRM_MODE_DPMS_ON, align 4
  %21 = call i32 @cdv_intel_dp_sink_dpms(%struct.gma_encoder* %19, i32 %20)
  %22 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %23 = call i32 @cdv_intel_dp_link_down(%struct.gma_encoder* %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %18
  %27 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %28 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %27)
  br label %29

29:                                               ; preds = %26, %18
  ret void
}

declare dso_local %struct.gma_encoder* @to_gma_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_backlight_off(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_off(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_dp_sink_dpms(%struct.gma_encoder*, i32) #1

declare dso_local i32 @cdv_intel_dp_link_down(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
