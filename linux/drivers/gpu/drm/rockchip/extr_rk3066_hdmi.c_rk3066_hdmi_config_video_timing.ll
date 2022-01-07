; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_config_video_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rk3066_hdmi.c_rk3066_hdmi_config_video_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk3066_hdmi = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HDMI_EXT_VIDEO_SET_EN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@HDMI_VIDEO_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_VIDEO_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@HDMI_VIDEO_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@HDMI_VIDEO_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@HDMI_VIDEO_MODE_INTERLACE = common dso_local global i32 0, align 4
@HDMI_VIDEO_MODE_PROGRESSIVE = common dso_local global i32 0, align 4
@HDMI_VIDEO_VSYNC_OFFSET_SHIFT = common dso_local global i32 0, align 4
@HDMI_EXT_VIDEO_PARA = common dso_local global i32 0, align 4
@HDMI_EXT_HTOTAL_L = common dso_local global i32 0, align 4
@HDMI_EXT_HTOTAL_H = common dso_local global i32 0, align 4
@HDMI_EXT_HBLANK_L = common dso_local global i32 0, align 4
@HDMI_EXT_HBLANK_H = common dso_local global i32 0, align 4
@HDMI_EXT_HDELAY_L = common dso_local global i32 0, align 4
@HDMI_EXT_HDELAY_H = common dso_local global i32 0, align 4
@HDMI_EXT_HDURATION_L = common dso_local global i32 0, align 4
@HDMI_EXT_HDURATION_H = common dso_local global i32 0, align 4
@HDMI_EXT_VTOTAL_L = common dso_local global i32 0, align 4
@HDMI_EXT_VTOTAL_H = common dso_local global i32 0, align 4
@HDMI_EXT_VBLANK_L = common dso_local global i32 0, align 4
@HDMI_EXT_VDELAY = common dso_local global i32 0, align 4
@HDMI_EXT_VDURATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk3066_hdmi*, %struct.drm_display_mode*)* @rk3066_hdmi_config_video_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3066_hdmi_config_video_timing(%struct.rk3066_hdmi* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.rk3066_hdmi*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk3066_hdmi* %0, %struct.rk3066_hdmi** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %7 = load i32, i32* @HDMI_EXT_VIDEO_SET_EN, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %9 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @HDMI_VIDEO_HSYNC_ACTIVE_HIGH, align 4
  br label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @HDMI_VIDEO_HSYNC_ACTIVE_LOW, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* @HDMI_VIDEO_VSYNC_ACTIVE_HIGH, align 4
  br label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @HDMI_VIDEO_VSYNC_ACTIVE_LOW, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* @HDMI_VIDEO_MODE_INTERLACE, align 4
  br label %46

44:                                               ; preds = %32
  %45 = load i32, i32* @HDMI_VIDEO_MODE_PROGRESSIVE, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  %50 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %51 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %61, label %55

55:                                               ; preds = %46
  %56 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %57 = getelementptr inbounds %struct.rk3066_hdmi, %struct.rk3066_hdmi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 3
  br i1 %60, label %61, label %62

61:                                               ; preds = %55, %46
  store i32 6, i32* %6, align 4
  br label %63

62:                                               ; preds = %55
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @HDMI_VIDEO_VSYNC_OFFSET_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %70 = load i32, i32* @HDMI_EXT_VIDEO_PARA, align 4
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %69, i32 %70, i32 %71)
  %73 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %74 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %77 = load i32, i32* @HDMI_EXT_HTOTAL_L, align 4
  %78 = load i32, i32* %5, align 4
  %79 = and i32 %78, 255
  %80 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %76, i32 %77, i32 %79)
  %81 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %82 = load i32, i32* @HDMI_EXT_HTOTAL_H, align 4
  %83 = load i32, i32* %5, align 4
  %84 = ashr i32 %83, 8
  %85 = and i32 %84, 255
  %86 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %81, i32 %82, i32 %85)
  %87 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %88 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %89, %92
  store i32 %93, i32* %5, align 4
  %94 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %95 = load i32, i32* @HDMI_EXT_HBLANK_L, align 4
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, 255
  %98 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %94, i32 %95, i32 %97)
  %99 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %100 = load i32, i32* @HDMI_EXT_HBLANK_H, align 4
  %101 = load i32, i32* %5, align 4
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  %104 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %99, i32 %100, i32 %103)
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %109 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %107, %110
  store i32 %111, i32* %5, align 4
  %112 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %113 = load i32, i32* @HDMI_EXT_HDELAY_L, align 4
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, 255
  %116 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %112, i32 %113, i32 %115)
  %117 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %118 = load i32, i32* @HDMI_EXT_HDELAY_H, align 4
  %119 = load i32, i32* %5, align 4
  %120 = ashr i32 %119, 8
  %121 = and i32 %120, 255
  %122 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %117, i32 %118, i32 %121)
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %127 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %125, %128
  store i32 %129, i32* %5, align 4
  %130 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %131 = load i32, i32* @HDMI_EXT_HDURATION_L, align 4
  %132 = load i32, i32* %5, align 4
  %133 = and i32 %132, 255
  %134 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %130, i32 %131, i32 %133)
  %135 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %136 = load i32, i32* @HDMI_EXT_HDURATION_H, align 4
  %137 = load i32, i32* %5, align 4
  %138 = ashr i32 %137, 8
  %139 = and i32 %138, 255
  %140 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %135, i32 %136, i32 %139)
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %5, align 4
  %144 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %145 = load i32, i32* @HDMI_EXT_VTOTAL_L, align 4
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 255
  %148 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %144, i32 %145, i32 %147)
  %149 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %150 = load i32, i32* @HDMI_EXT_VTOTAL_H, align 4
  %151 = load i32, i32* %5, align 4
  %152 = ashr i32 %151, 8
  %153 = and i32 %152, 255
  %154 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %149, i32 %150, i32 %153)
  %155 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %156 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %159 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = sub nsw i32 %157, %160
  store i32 %161, i32* %5, align 4
  %162 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %163 = load i32, i32* @HDMI_EXT_VBLANK_L, align 4
  %164 = load i32, i32* %5, align 4
  %165 = and i32 %164, 255
  %166 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %162, i32 %163, i32 %165)
  %167 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %168 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %171 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %170, i32 0, i32 7
  %172 = load i32, i32* %171, align 4
  %173 = sub nsw i32 %169, %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %173, %174
  store i32 %175, i32* %5, align 4
  %176 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %177 = load i32, i32* @HDMI_EXT_VDELAY, align 4
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 255
  %180 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %176, i32 %177, i32 %179)
  %181 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %182 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %181, i32 0, i32 8
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %185 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 %183, %186
  store i32 %187, i32* %5, align 4
  %188 = load %struct.rk3066_hdmi*, %struct.rk3066_hdmi** %3, align 8
  %189 = load i32, i32* @HDMI_EXT_VDURATION, align 4
  %190 = load i32, i32* %5, align 4
  %191 = and i32 %190, 255
  %192 = call i32 @hdmi_writeb(%struct.rk3066_hdmi* %188, i32 %189, i32 %191)
  ret i32 0
}

declare dso_local i32 @hdmi_writeb(%struct.rk3066_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
