; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_hdmi_set_color_depth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_evergreen_hdmi.c_dce4_hdmi_set_color_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { %struct.drm_device* }
%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }
%struct.drm_connector = type { i32 }

@HDMI_CONTROL = common dso_local global i64 0, align 8
@HDMI_DEEP_COLOR_ENABLE = common dso_local global i32 0, align 4
@HDMI_DEEP_COLOR_DEPTH_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Disabling hdmi deep color for %d bpc.\0A\00", align 1
@HDMI_30BIT_DEEP_COLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 30 for 10 bpc.\0A\00", align 1
@HDMI_36BIT_DEEP_COLOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: Enabling hdmi deep color 36 for 12 bpc.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dce4_hdmi_set_color_depth(%struct.drm_encoder* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_encoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.radeon_device*, align 8
  %9 = alloca %struct.drm_connector*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %12 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %11, i32 0, i32 0
  %13 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  store %struct.drm_device* %13, %struct.drm_device** %7, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %15 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %14, i32 0, i32 0
  %16 = load %struct.radeon_device*, %struct.radeon_device** %15, align 8
  store %struct.radeon_device* %16, %struct.radeon_device** %8, align 8
  %17 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %18 = call %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder* %17)
  store %struct.drm_connector* %18, %struct.drm_connector** %9, align 8
  %19 = load i64, i64* @HDMI_CONTROL, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @RREG32(i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @HDMI_DEEP_COLOR_DEPTH_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %10, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %33 [
    i32 0, label %32
    i32 6, label %32
    i32 8, label %32
    i32 16, label %32
    i32 10, label %39
    i32 12, label %51
  ]

32:                                               ; preds = %3, %3, %3, %3
  br label %33

33:                                               ; preds = %3, %32
  %34 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %35 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %63

39:                                               ; preds = %3
  %40 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @HDMI_30BIT_DEEP_COLOR, align 4
  %44 = call i32 @HDMI_DEEP_COLOR_DEPTH(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %48 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %63

51:                                               ; preds = %3
  %52 = load i32, i32* @HDMI_DEEP_COLOR_ENABLE, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* @HDMI_36BIT_DEEP_COLOR, align 4
  %56 = call i32 @HDMI_DEEP_COLOR_DEPTH(i32 %55)
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  %60 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @DRM_DEBUG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %51, %39, %33
  %64 = load i64, i64* @HDMI_CONTROL, align 8
  %65 = load i64, i64* %5, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @WREG32(i64 %66, i32 %67)
  ret void
}

declare dso_local %struct.drm_connector* @radeon_get_connector_for_encoder(%struct.drm_encoder*) #1

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @DRM_DEBUG(i8*, i32, ...) #1

declare dso_local i32 @HDMI_DEEP_COLOR_DEPTH(i32) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
