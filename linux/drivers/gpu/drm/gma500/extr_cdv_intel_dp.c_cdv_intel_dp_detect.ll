; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_cdv_intel_dp.c_cdv_intel_dp_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.gma_encoder = type { %struct.cdv_intel_dp* }
%struct.cdv_intel_dp = type { i32, i64, i32 }
%struct.edid = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @cdv_intel_dp_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdv_intel_dp_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gma_encoder*, align 8
  %7 = alloca %struct.cdv_intel_dp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.edid*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %12 = call %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector* %11)
  store %struct.gma_encoder* %12, %struct.gma_encoder** %6, align 8
  %13 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %14 = getelementptr inbounds %struct.gma_encoder, %struct.gma_encoder* %13, i32 0, i32 0
  %15 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %14, align 8
  store %struct.cdv_intel_dp* %15, %struct.cdv_intel_dp** %7, align 8
  store %struct.edid* null, %struct.edid** %9, align 8
  %16 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %17 = call i32 @is_edp(%struct.gma_encoder* %16)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %19 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %24 = call i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %27 = call i32 @cdv_dp_detect(%struct.gma_encoder* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @connector_status_connected, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %36 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %75

39:                                               ; preds = %25
  %40 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %41 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %46 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %51 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %67

52:                                               ; preds = %39
  %53 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %54 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %55 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %54, i32 0, i32 2
  %56 = call %struct.edid* @drm_get_edid(%struct.drm_connector* %53, i32* %55)
  store %struct.edid* %56, %struct.edid** %9, align 8
  %57 = load %struct.edid*, %struct.edid** %9, align 8
  %58 = icmp ne %struct.edid* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.edid*, %struct.edid** %9, align 8
  %61 = call i32 @drm_detect_monitor_audio(%struct.edid* %60)
  %62 = load %struct.cdv_intel_dp*, %struct.cdv_intel_dp** %7, align 8
  %63 = getelementptr inbounds %struct.cdv_intel_dp, %struct.cdv_intel_dp* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.edid*, %struct.edid** %9, align 8
  %65 = call i32 @kfree(%struct.edid* %64)
  br label %66

66:                                               ; preds = %59, %52
  br label %67

67:                                               ; preds = %66, %44
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.gma_encoder*, %struct.gma_encoder** %6, align 8
  %72 = call i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @connector_status_connected, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %37
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.gma_encoder* @gma_attached_encoder(%struct.drm_connector*) #1

declare dso_local i32 @is_edp(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_on(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_dp_detect(%struct.gma_encoder*) #1

declare dso_local i32 @cdv_intel_edp_panel_vdd_off(%struct.gma_encoder*) #1

declare dso_local %struct.edid* @drm_get_edid(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_detect_monitor_audio(%struct.edid*) #1

declare dso_local i32 @kfree(%struct.edid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
