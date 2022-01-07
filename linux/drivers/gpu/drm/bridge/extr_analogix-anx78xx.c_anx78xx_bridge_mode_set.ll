; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_analogix-anx78xx.c_anx78xx_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.anx78xx = type { i32, i32, i32 }
%struct.hdmi_avi_infoframe = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to setup AVI infoframe: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to send AVI infoframe: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @anx78xx_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @anx78xx_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.anx78xx*, align 8
  %8 = alloca %struct.hdmi_avi_infoframe, align 4
  %9 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %10 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %11 = call %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge* %10)
  store %struct.anx78xx* %11, %struct.anx78xx** %7, align 8
  %12 = load %struct.anx78xx*, %struct.anx78xx** %7, align 8
  %13 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %47

21:                                               ; preds = %3
  %22 = load %struct.anx78xx*, %struct.anx78xx** %7, align 8
  %23 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.anx78xx*, %struct.anx78xx** %7, align 8
  %26 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %25, i32 0, i32 1
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe* %8, i32* %26, %struct.drm_display_mode* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %43

34:                                               ; preds = %21
  %35 = load %struct.anx78xx*, %struct.anx78xx** %7, align 8
  %36 = call i32 @anx78xx_send_video_infoframe(%struct.anx78xx* %35, %struct.hdmi_avi_infoframe* %8)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %31
  %44 = load %struct.anx78xx*, %struct.anx78xx** %7, align 8
  %45 = getelementptr inbounds %struct.anx78xx, %struct.anx78xx* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  br label %47

47:                                               ; preds = %43, %20
  ret void
}

declare dso_local %struct.anx78xx* @bridge_to_anx78xx(%struct.drm_bridge*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(%struct.hdmi_avi_infoframe*, i32*, %struct.drm_display_mode*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @anx78xx_send_video_infoframe(%struct.anx78xx*, %struct.hdmi_avi_infoframe*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
