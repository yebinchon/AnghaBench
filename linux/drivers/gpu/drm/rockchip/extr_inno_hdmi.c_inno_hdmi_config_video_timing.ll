; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_inno_hdmi.c_inno_hdmi_config_video_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inno_hdmi = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@HDMI_VIDEO_TIMING_CTL = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HTOTAL_L = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HTOTAL_H = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HBLANK_L = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HBLANK_H = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HDELAY_L = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HDELAY_H = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HDURATION_L = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_HDURATION_H = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_VTOTAL_L = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_VTOTAL_H = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_VBLANK = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_VDELAY = common dso_local global i32 0, align 4
@HDMI_VIDEO_EXT_VDURATION = common dso_local global i32 0, align 4
@HDMI_PHY_PRE_DIV_RATIO = common dso_local global i32 0, align 4
@HDMI_PHY_FEEDBACK_DIV_RATIO_LOW = common dso_local global i32 0, align 4
@HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inno_hdmi*, %struct.drm_display_mode*)* @inno_hdmi_config_video_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inno_hdmi_config_video_timing(%struct.inno_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.inno_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  store %struct.inno_hdmi* %0, %struct.inno_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %6 = call i32 @v_EXTERANL_VIDEO(i32 1)
  store i32 %6, i32* %5, align 4
  %7 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %8 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = call i32 @v_HSYNC_POLARITY(i32 1)
  br label %17

15:                                               ; preds = %2
  %16 = call i32 @v_HSYNC_POLARITY(i32 0)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %22 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = call i32 @v_VSYNC_POLARITY(i32 1)
  br label %31

29:                                               ; preds = %17
  %30 = call i32 @v_VSYNC_POLARITY(i32 0)
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = call i32 @v_INETLACE(i32 1)
  br label %45

43:                                               ; preds = %31
  %44 = call i32 @v_INETLACE(i32 0)
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %50 = load i32, i32* @HDMI_VIDEO_TIMING_CTL, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @hdmi_writeb(%struct.inno_hdmi* %49, i32 %50, i32 %51)
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  %56 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %57 = load i32, i32* @HDMI_VIDEO_EXT_HTOTAL_L, align 4
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 255
  %60 = call i32 @hdmi_writeb(%struct.inno_hdmi* %56, i32 %57, i32 %59)
  %61 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %62 = load i32, i32* @HDMI_VIDEO_EXT_HTOTAL_H, align 4
  %63 = load i32, i32* %5, align 4
  %64 = ashr i32 %63, 8
  %65 = and i32 %64, 255
  %66 = call i32 @hdmi_writeb(%struct.inno_hdmi* %61, i32 %62, i32 %65)
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %71 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %5, align 4
  %74 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %75 = load i32, i32* @HDMI_VIDEO_EXT_HBLANK_L, align 4
  %76 = load i32, i32* %5, align 4
  %77 = and i32 %76, 255
  %78 = call i32 @hdmi_writeb(%struct.inno_hdmi* %74, i32 %75, i32 %77)
  %79 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %80 = load i32, i32* @HDMI_VIDEO_EXT_HBLANK_H, align 4
  %81 = load i32, i32* %5, align 4
  %82 = ashr i32 %81, 8
  %83 = and i32 %82, 255
  %84 = call i32 @hdmi_writeb(%struct.inno_hdmi* %79, i32 %80, i32 %83)
  %85 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %86 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %89 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %5, align 4
  %92 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %93 = load i32, i32* @HDMI_VIDEO_EXT_HDELAY_L, align 4
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, 255
  %96 = call i32 @hdmi_writeb(%struct.inno_hdmi* %92, i32 %93, i32 %95)
  %97 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %98 = load i32, i32* @HDMI_VIDEO_EXT_HDELAY_H, align 4
  %99 = load i32, i32* %5, align 4
  %100 = ashr i32 %99, 8
  %101 = and i32 %100, 255
  %102 = call i32 @hdmi_writeb(%struct.inno_hdmi* %97, i32 %98, i32 %101)
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %107 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = sub nsw i32 %105, %108
  store i32 %109, i32* %5, align 4
  %110 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %111 = load i32, i32* @HDMI_VIDEO_EXT_HDURATION_L, align 4
  %112 = load i32, i32* %5, align 4
  %113 = and i32 %112, 255
  %114 = call i32 @hdmi_writeb(%struct.inno_hdmi* %110, i32 %111, i32 %113)
  %115 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %116 = load i32, i32* @HDMI_VIDEO_EXT_HDURATION_H, align 4
  %117 = load i32, i32* %5, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = call i32 @hdmi_writeb(%struct.inno_hdmi* %115, i32 %116, i32 %119)
  %121 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %122 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %5, align 4
  %124 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %125 = load i32, i32* @HDMI_VIDEO_EXT_VTOTAL_L, align 4
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 255
  %128 = call i32 @hdmi_writeb(%struct.inno_hdmi* %124, i32 %125, i32 %127)
  %129 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %130 = load i32, i32* @HDMI_VIDEO_EXT_VTOTAL_H, align 4
  %131 = load i32, i32* %5, align 4
  %132 = ashr i32 %131, 8
  %133 = and i32 %132, 255
  %134 = call i32 @hdmi_writeb(%struct.inno_hdmi* %129, i32 %130, i32 %133)
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %139 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = sub nsw i32 %137, %140
  store i32 %141, i32* %5, align 4
  %142 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %143 = load i32, i32* @HDMI_VIDEO_EXT_VBLANK, align 4
  %144 = load i32, i32* %5, align 4
  %145 = and i32 %144, 255
  %146 = call i32 @hdmi_writeb(%struct.inno_hdmi* %142, i32 %143, i32 %145)
  %147 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %148 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  store i32 %153, i32* %5, align 4
  %154 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %155 = load i32, i32* @HDMI_VIDEO_EXT_VDELAY, align 4
  %156 = load i32, i32* %5, align 4
  %157 = and i32 %156, 255
  %158 = call i32 @hdmi_writeb(%struct.inno_hdmi* %154, i32 %155, i32 %157)
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %160 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %163 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %162, i32 0, i32 7
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %161, %164
  store i32 %165, i32* %5, align 4
  %166 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %167 = load i32, i32* @HDMI_VIDEO_EXT_VDURATION, align 4
  %168 = load i32, i32* %5, align 4
  %169 = and i32 %168, 255
  %170 = call i32 @hdmi_writeb(%struct.inno_hdmi* %166, i32 %167, i32 %169)
  %171 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %172 = load i32, i32* @HDMI_PHY_PRE_DIV_RATIO, align 4
  %173 = call i32 @hdmi_writeb(%struct.inno_hdmi* %171, i32 %172, i32 30)
  %174 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %175 = load i32, i32* @HDMI_PHY_FEEDBACK_DIV_RATIO_LOW, align 4
  %176 = call i32 @hdmi_writeb(%struct.inno_hdmi* %174, i32 %175, i32 44)
  %177 = load %struct.inno_hdmi*, %struct.inno_hdmi** %3, align 8
  %178 = load i32, i32* @HDMI_PHY_FEEDBACK_DIV_RATIO_HIGH, align 4
  %179 = call i32 @hdmi_writeb(%struct.inno_hdmi* %177, i32 %178, i32 1)
  ret i32 0
}

declare dso_local i32 @v_EXTERANL_VIDEO(i32) #1

declare dso_local i32 @v_HSYNC_POLARITY(i32) #1

declare dso_local i32 @v_VSYNC_POLARITY(i32) #1

declare dso_local i32 @v_INETLACE(i32) #1

declare dso_local i32 @hdmi_writeb(%struct.inno_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
