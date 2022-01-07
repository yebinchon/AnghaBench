; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_avi_infoframe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sti/extr_sti_hdmi.c_hdmi_avi_infoframe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sti_hdmi = type { i32, i32, %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32, i32, i32 }

@AVI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to setup AVI infoframe: %d\0A\00", align 1
@HDMI_QUANTIZATION_RANGE_DEFAULT = common dso_local global i32 0, align 4
@HDMI_COLORIMETRY_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to pack AVI infoframe: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sti_hdmi*)* @hdmi_avi_infoframe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_avi_infoframe_config(%struct.sti_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sti_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.hdmi_avi_infoframe, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sti_hdmi* %0, %struct.sti_hdmi** %3, align 8
  %10 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %11 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %10, i32 0, i32 2
  store %struct.drm_display_mode* %11, %struct.drm_display_mode** %4, align 8
  %12 = load i32, i32* @AVI, align 4
  %13 = call i32 @HDMI_INFOFRAME_SIZE(i32 %12)
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %19 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %5, i32 %20, %struct.drm_display_mode* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %51

29:                                               ; preds = %1
  %30 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.sti_hdmi, %struct.sti_hdmi* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 2
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @HDMI_QUANTIZATION_RANGE_DEFAULT, align 4
  %35 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 1
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @HDMI_COLORIMETRY_NONE, align 4
  %37 = getelementptr inbounds %struct.hdmi_avi_infoframe, %struct.hdmi_avi_infoframe* %5, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = mul nuw i64 4, %14
  %39 = trunc i64 %38 to i32
  %40 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %5, i32* %16, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %51

47:                                               ; preds = %29
  %48 = load %struct.sti_hdmi*, %struct.sti_hdmi** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @hdmi_infoframe_write_infopack(%struct.sti_hdmi* %48, i32* %16, i32 %49)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %43, %25
  %52 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %52)
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @hdmi_infoframe_write_infopack(%struct.sti_hdmi*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
