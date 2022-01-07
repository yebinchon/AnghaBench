; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_bridge.c_msm_hdmi_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_bridge = type { %struct.hdmi* }
%struct.hdmi = type { i32, i64 }

@.str = private unnamed_addr constant [61 x i8] c"htotal=%d, vtotal=%d, hstart=%d, hend=%d, vstart=%d, vend=%d\00", align 1
@REG_HDMI_TOTAL = common dso_local global i32 0, align 4
@REG_HDMI_ACTIVE_HSYNC = common dso_local global i32 0, align 4
@REG_HDMI_ACTIVE_VSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@REG_HDMI_VSYNC_TOTAL_F2 = common dso_local global i32 0, align 4
@REG_HDMI_VSYNC_ACTIVE_F2 = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@HDMI_FRAME_CTRL_HSYNC_LOW = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@HDMI_FRAME_CTRL_VSYNC_LOW = common dso_local global i32 0, align 4
@HDMI_FRAME_CTRL_INTERLACED_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"frame_ctrl=%08x\00", align 1
@REG_HDMI_FRAME_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @msm_hdmi_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_hdmi_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.hdmi_bridge*, align 8
  %8 = alloca %struct.hdmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %14 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %15 = call %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge* %14)
  store %struct.hdmi_bridge* %15, %struct.hdmi_bridge** %7, align 8
  %16 = load %struct.hdmi_bridge*, %struct.hdmi_bridge** %7, align 8
  %17 = getelementptr inbounds %struct.hdmi_bridge, %struct.hdmi_bridge* %16, i32 0, i32 0
  %18 = load %struct.hdmi*, %struct.hdmi** %17, align 8
  store %struct.hdmi* %18, %struct.hdmi** %8, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %5, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 1000
  %24 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %25 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %34 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %35, %38
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %45 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %65 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %68 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %76 = load i32, i32* @REG_HDMI_TOTAL, align 4
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %79, 1
  %81 = call i32 @HDMI_TOTAL_H_TOTAL(i32 %80)
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @HDMI_TOTAL_V_TOTAL(i32 %85)
  %87 = or i32 %81, %86
  %88 = call i32 @hdmi_write(%struct.hdmi* %75, i32 %76, i32 %87)
  %89 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %90 = load i32, i32* @REG_HDMI_ACTIVE_HSYNC, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @HDMI_ACTIVE_HSYNC_START(i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @HDMI_ACTIVE_HSYNC_END(i32 %93)
  %95 = or i32 %92, %94
  %96 = call i32 @hdmi_write(%struct.hdmi* %89, i32 %90, i32 %95)
  %97 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %98 = load i32, i32* @REG_HDMI_ACTIVE_VSYNC, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @HDMI_ACTIVE_VSYNC_START(i32 %99)
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @HDMI_ACTIVE_VSYNC_END(i32 %101)
  %103 = or i32 %100, %102
  %104 = call i32 @hdmi_write(%struct.hdmi* %97, i32 %98, i32 %103)
  %105 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %106 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %3
  %112 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %113 = load i32, i32* @REG_HDMI_VSYNC_TOTAL_F2, align 4
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %115 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @HDMI_VSYNC_TOTAL_F2_V_TOTAL(i32 %116)
  %118 = call i32 @hdmi_write(%struct.hdmi* %112, i32 %113, i32 %117)
  %119 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %120 = load i32, i32* @REG_HDMI_VSYNC_ACTIVE_F2, align 4
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  %123 = call i32 @HDMI_VSYNC_ACTIVE_F2_START(i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = call i32 @HDMI_VSYNC_ACTIVE_F2_END(i32 %125)
  %127 = or i32 %123, %126
  %128 = call i32 @hdmi_write(%struct.hdmi* %119, i32 %120, i32 %127)
  br label %140

129:                                              ; preds = %3
  %130 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %131 = load i32, i32* @REG_HDMI_VSYNC_TOTAL_F2, align 4
  %132 = call i32 @HDMI_VSYNC_TOTAL_F2_V_TOTAL(i32 0)
  %133 = call i32 @hdmi_write(%struct.hdmi* %130, i32 %131, i32 %132)
  %134 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %135 = load i32, i32* @REG_HDMI_VSYNC_ACTIVE_F2, align 4
  %136 = call i32 @HDMI_VSYNC_ACTIVE_F2_START(i32 0)
  %137 = call i32 @HDMI_VSYNC_ACTIVE_F2_END(i32 0)
  %138 = or i32 %136, %137
  %139 = call i32 @hdmi_write(%struct.hdmi* %134, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %129, %111
  store i32 0, i32* %13, align 4
  %141 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %142 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @HDMI_FRAME_CTRL_HSYNC_LOW, align 4
  %149 = load i32, i32* %13, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %147, %140
  %152 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %153 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* @HDMI_FRAME_CTRL_VSYNC_LOW, align 4
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %13, align 4
  br label %162

162:                                              ; preds = %158, %151
  %163 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %164 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i32, i32* @HDMI_FRAME_CTRL_INTERLACED_EN, align 4
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %169, %162
  %174 = load i32, i32* %13, align 4
  %175 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %177 = load i32, i32* @REG_HDMI_FRAME_CTRL, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @hdmi_write(%struct.hdmi* %176, i32 %177, i32 %178)
  %180 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %181 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %173
  %185 = load %struct.hdmi*, %struct.hdmi** %8, align 8
  %186 = call i32 @msm_hdmi_audio_update(%struct.hdmi* %185)
  br label %187

187:                                              ; preds = %184, %173
  ret void
}

declare dso_local %struct.hdmi_bridge* @to_hdmi_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

declare dso_local i32 @hdmi_write(%struct.hdmi*, i32, i32) #1

declare dso_local i32 @HDMI_TOTAL_H_TOTAL(i32) #1

declare dso_local i32 @HDMI_TOTAL_V_TOTAL(i32) #1

declare dso_local i32 @HDMI_ACTIVE_HSYNC_START(i32) #1

declare dso_local i32 @HDMI_ACTIVE_HSYNC_END(i32) #1

declare dso_local i32 @HDMI_ACTIVE_VSYNC_START(i32) #1

declare dso_local i32 @HDMI_ACTIVE_VSYNC_END(i32) #1

declare dso_local i32 @HDMI_VSYNC_TOTAL_F2_V_TOTAL(i32) #1

declare dso_local i32 @HDMI_VSYNC_ACTIVE_F2_START(i32) #1

declare dso_local i32 @HDMI_VSYNC_ACTIVE_F2_END(i32) #1

declare dso_local i32 @msm_hdmi_audio_update(%struct.hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
