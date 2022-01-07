; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_detect_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_detect_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32 }
%struct.edid = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @cdv_intel_dp_detect_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_detect_audio(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.gma_encoder*, align 8
  %4 = alloca %struct.cdv_intel_dp*, align 8
  %5 = alloca %struct.edid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %8)
  store %struct.gma_encoder* %9, %struct.gma_encoder** %3, align 8
  %10 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %11 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %10, i32 0, i32 0
  %12 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %11, align 8
  store %struct.cdv_intel_dp* %12, %struct.cdv_intel_dp** %4, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %14 = call i32 @is_edp(%struct.gma_encoder* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %19 = call i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %22 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %4, align 8
  %23 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %22, i32 0, i32 0
  %24 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %21, i32* %23)
  store %struct.edid* %24, %struct.edid** %5, align 8
  %25 = load %struct.edid*, %struct.edid** %5, align 8
  %26 = icmp ne %struct.edid* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.edid*, %struct.edid** %5, align 8
  %29 = call i32 @drm_detect_monitor_audio(%struct.edid* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.edid*, %struct.edid** %5, align 8
  %31 = call i32 @kfree(%struct.edid* %30)
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.gma_encoder*, %struct.gma_encoder** %3, align 8
  %37 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %36)
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
