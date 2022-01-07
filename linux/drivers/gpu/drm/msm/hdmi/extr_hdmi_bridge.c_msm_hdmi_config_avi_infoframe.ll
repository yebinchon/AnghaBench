; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_config_avi_infoframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_config_avi_infoframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%union.hdmi_infoframe = type { i32 }

@AVI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to configure avi infoframe\0A\00", align 1
@REG_HDMI_INFOFRAME_CTRL0 = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AVI_SEND = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL0_AVI_CONT = common dso_local global i32 0, align 4
@REG_HDMI_INFOFRAME_CTRL1 = common dso_local global i32 0, align 4
@HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE__MASK = common dso_local global i32 0, align 4
@AVI_IFRAME_LINE_NUMBER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdmi*)* @msm_hdmi_config_avi_infoframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_config_avi_infoframe(%struct.hdmi* %0) #0 {
  %2 = alloca %struct.hdmi*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdmi* %0, %struct.hdmi** %2, align 8
  %11 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %12 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %11, i32 0, i32 2
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %14, align 8
  store %struct.drm_crtc* %15, %struct.drm_crtc** %3, align 8
  %16 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %17 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %4, align 8
  %20 = load i32, i32* @AVI, align 4
  %21 = call i32 @HDMI_INFOFRAME_SIZE(i32 %20)
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = bitcast %union.hdmi_infoframe* %5 to i32*
  %26 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %27 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(i32* %25, i32 %28, %struct.drm_display_mode* %29)
  %31 = mul nuw i64 4, %22
  %32 = trunc i64 %31 to i32
  %33 = call i32 @hdmi_infoframe_pack(%union.hdmi_infoframe* %5, i32* %24, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %1
  %37 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %38 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = call i32 @DRM_DEV_ERROR(i32* %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %128

42:                                               ; preds = %1
  %43 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %44 = call i32 @REG_HDMI_AVI_INFO(i32 0)
  %45 = getelementptr inbounds i32, i32* %24, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds i32, i32* %24, i64 4
  %48 = load i32, i32* %47, align 16
  %49 = shl i32 %48, 8
  %50 = or i32 %46, %49
  %51 = getelementptr inbounds i32, i32* %24, i64 5
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = or i32 %50, %53
  %55 = getelementptr inbounds i32, i32* %24, i64 6
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 %56, 24
  %58 = or i32 %54, %57
  %59 = call i32 @hdmi_write(%struct.hdmi* %43, i32 %44, i32 %58)
  %60 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %61 = call i32 @REG_HDMI_AVI_INFO(i32 1)
  %62 = getelementptr inbounds i32, i32* %24, i64 7
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds i32, i32* %24, i64 8
  %65 = load i32, i32* %64, align 16
  %66 = shl i32 %65, 8
  %67 = or i32 %63, %66
  %68 = getelementptr inbounds i32, i32* %24, i64 9
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 16
  %71 = or i32 %67, %70
  %72 = getelementptr inbounds i32, i32* %24, i64 10
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 24
  %75 = or i32 %71, %74
  %76 = call i32 @hdmi_write(%struct.hdmi* %60, i32 %61, i32 %75)
  %77 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %78 = call i32 @REG_HDMI_AVI_INFO(i32 2)
  %79 = getelementptr inbounds i32, i32* %24, i64 11
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds i32, i32* %24, i64 12
  %82 = load i32, i32* %81, align 16
  %83 = shl i32 %82, 8
  %84 = or i32 %80, %83
  %85 = getelementptr inbounds i32, i32* %24, i64 13
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = or i32 %84, %87
  %89 = getelementptr inbounds i32, i32* %24, i64 14
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %90, 24
  %92 = or i32 %88, %91
  %93 = call i32 @hdmi_write(%struct.hdmi* %77, i32 %78, i32 %92)
  %94 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %95 = call i32 @REG_HDMI_AVI_INFO(i32 3)
  %96 = getelementptr inbounds i32, i32* %24, i64 15
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds i32, i32* %24, i64 16
  %99 = load i32, i32* %98, align 16
  %100 = shl i32 %99, 8
  %101 = or i32 %97, %100
  %102 = getelementptr inbounds i32, i32* %24, i64 1
  %103 = load i32, i32* %102, align 4
  %104 = shl i32 %103, 24
  %105 = or i32 %101, %104
  %106 = call i32 @hdmi_write(%struct.hdmi* %94, i32 %95, i32 %105)
  %107 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %108 = load i32, i32* @REG_HDMI_INFOFRAME_CTRL0, align 4
  %109 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AVI_SEND, align 4
  %110 = load i32, i32* @HDMI_INFOFRAME_CTRL0_AVI_CONT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 @hdmi_write(%struct.hdmi* %107, i32 %108, i32 %111)
  %113 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %114 = load i32, i32* @REG_HDMI_INFOFRAME_CTRL1, align 4
  %115 = call i32 @hdmi_read(%struct.hdmi* %113, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* @HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE__MASK, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %8, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @AVI_IFRAME_LINE_NUMBER, align 4
  %121 = call i32 @HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE(i32 %120)
  %122 = load i32, i32* %8, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %8, align 4
  %124 = load %struct.hdmi*, %struct.hdmi** %2, align 8
  %125 = load i32, i32* @REG_HDMI_INFOFRAME_CTRL1, align 4
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @hdmi_write(%struct.hdmi* %124, i32 %125, i32 %126)
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %42, %36
  %129 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %129)
  %130 = load i32, i32* %10, align 4
  switch i32 %130, label %132 [
    i32 0, label %131
    i32 1, label %131
  ]

131:                                              ; preds = %128, %128
  ret void

132:                                              ; preds = %128
  unreachable
}

declare dso_local i32 @HDMI_INFOFRAME_SIZE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(i32*, i32, %struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_infoframe_pack(%union.hdmi_infoframe*, i32*, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32*, i8*) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @REG_HDMI_AVI_INFO(i32) #1

declare dso_local i32 @hdmi_read(%struct.hdmi*, i32) #1

declare dso_local i32 @HDMI_INFOFRAME_CTRL1_AVI_INFO_LINE(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
