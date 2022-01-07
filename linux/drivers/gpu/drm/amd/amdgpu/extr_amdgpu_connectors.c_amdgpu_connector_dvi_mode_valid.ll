; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dvi_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_connectors.c_amdgpu_connector_dvi_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { %struct.amdgpu_device* }
%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.amdgpu_connector = type { i64, i64 }

@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D = common dso_local global i64 0, align 8
@CONNECTOR_OBJECT_ID_HDMI_TYPE_B = common dso_local global i64 0, align 8
@MODE_OK = common dso_local global i32 0, align 4
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @amdgpu_connector_dvi_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_connector_dvi_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.amdgpu_device*, align 8
  %8 = alloca %struct.amdgpu_connector*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %10 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %9, i32 0, i32 0
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %6, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.amdgpu_device*, %struct.amdgpu_device** %13, align 8
  store %struct.amdgpu_device* %14, %struct.amdgpu_device** %7, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = call %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector* %15)
  store %struct.amdgpu_connector* %16, %struct.amdgpu_connector** %8, align 8
  %17 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %18 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %62

21:                                               ; preds = %2
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sgt i32 %24, 165000
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %28 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_I, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %34 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CONNECTOR_OBJECT_ID_DUAL_LINK_DVI_D, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.amdgpu_connector*, %struct.amdgpu_connector** %8, align 8
  %40 = getelementptr inbounds %struct.amdgpu_connector, %struct.amdgpu_connector* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CONNECTOR_OBJECT_ID_HDMI_TYPE_B, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %32, %26
  %45 = load i32, i32* @MODE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %76

46:                                               ; preds = %38
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %48 = call i32 @amdgpu_connector_edid(%struct.drm_connector* %47)
  %49 = call i64 @drm_detect_hdmi_monitor(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 340000
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %57, i32* %3, align 4
  br label %76

58:                                               ; preds = %51
  %59 = load i32, i32* @MODE_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %76

60:                                               ; preds = %46
  %61 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %61, i32* %3, align 4
  br label %76

62:                                               ; preds = %21, %2
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 10
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %7, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %66, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %73, i32* %3, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @MODE_OK, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %72, %60, %58, %56, %44
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.amdgpu_connector* @to_amdgpu_connector(%struct.drm_connector*) #1

declare dso_local i64 @drm_detect_hdmi_monitor(i32) #1

declare dso_local i32 @amdgpu_connector_edid(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
