; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_vendor_infoframe_from_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_hdmi_vendor_infoframe_from_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_vendor_infoframe = type { i32, i64 }
%struct.drm_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_3D_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(%struct.hdmi_vendor_infoframe* %0, %struct.drm_connector* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdmi_vendor_infoframe*, align 8
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.hdmi_vendor_infoframe* %0, %struct.hdmi_vendor_infoframe** %5, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %13 = icmp ne %struct.drm_connector* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %16 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %14
  %21 = phi i32 [ %18, %14 ], [ 0, %19 ]
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %23 = icmp ne %struct.hdmi_vendor_infoframe* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = icmp ne %struct.drm_display_mode* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24, %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %67

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %67

36:                                               ; preds = %30
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %38 = call i64 @drm_match_hdmi_mode(%struct.drm_display_mode* %37)
  store i64 %38, i64* %11, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DRM_MODE_FLAG_3D_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i64, i64* %11, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %36
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %67

52:                                               ; preds = %46, %36
  %53 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %54 = call i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %4, align 4
  br label %67

59:                                               ; preds = %52
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %62 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %64 = call i32 @s3d_structure_from_display_mode(%struct.drm_display_mode* %63)
  %65 = load %struct.hdmi_vendor_infoframe*, %struct.hdmi_vendor_infoframe** %5, align 8
  %66 = getelementptr inbounds %struct.hdmi_vendor_infoframe, %struct.hdmi_vendor_infoframe* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %59, %57, %49, %33, %27
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @drm_match_hdmi_mode(%struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_vendor_infoframe_init(%struct.hdmi_vendor_infoframe*) #1

declare dso_local i32 @s3d_structure_from_display_mode(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
