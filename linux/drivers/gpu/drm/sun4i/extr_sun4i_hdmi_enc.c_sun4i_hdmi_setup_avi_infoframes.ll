; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_setup_avi_infoframes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_enc.c_sun4i_hdmi_setup_avi_infoframes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_hdmi = type { i64, i32 }
%struct.drm_display_mode = type { i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to get infoframes from mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to pack infoframes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sun4i_hdmi*, %struct.drm_display_mode*)* @sun4i_hdmi_setup_avi_infoframes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_hdmi_setup_avi_infoframes(%struct.sun4i_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_hdmi*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.hdmi_avi_infoframe, align 4
  %7 = alloca [17 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sun4i_hdmi* %0, %struct.sun4i_hdmi** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %11 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %10, i32 0, i32 1
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %13 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %6, i32* %11, %struct.drm_display_mode* %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %3, align 4
  br label %48

19:                                               ; preds = %2
  %20 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 0
  %21 = call i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe* %6, i32* %20, i32 68)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %48

27:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %44, %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %30, 68
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [17 x i32], [17 x i32]* %7, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sun4i_hdmi*, %struct.sun4i_hdmi** %4, align 8
  %38 = getelementptr inbounds %struct.sun4i_hdmi, %struct.sun4i_hdmi* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i64 @SUN4I_HDMI_AVI_INFOFRAME_REG(i32 %40)
  %42 = add nsw i64 %39, %41
  %43 = call i32 @writeb(i32 %36, i64 %42)
  br label %44

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %28

47:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %24, %16
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @hdmi_avi_infoframe_pack(%struct.hdmi_avi_infoframe*, i32*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @SUN4I_HDMI_AVI_INFOFRAME_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
