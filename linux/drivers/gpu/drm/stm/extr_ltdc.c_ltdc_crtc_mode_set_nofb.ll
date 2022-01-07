; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/stm/extr_ltdc.c_ltdc_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.drm_device* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_device = type { i32 }
%struct.ltdc_device = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Failed to set mode, cannot get sync\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"CRTC:%d mode:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Video mode: %dx%d\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c" hfp %d hbp %d hsl %d vfp %d vbp %d vsl %d\0A\00", align 1
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@GCR_HSPOL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@GCR_VSPOL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@GCR_DEPOL = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4
@GCR_PCPOL = common dso_local global i32 0, align 4
@LTDC_GCR = common dso_local global i32 0, align 4
@LTDC_SSCR = common dso_local global i32 0, align 4
@SSCR_VSH = common dso_local global i32 0, align 4
@SSCR_HSW = common dso_local global i32 0, align 4
@LTDC_BPCR = common dso_local global i32 0, align 4
@BPCR_AVBP = common dso_local global i32 0, align 4
@BPCR_AHBP = common dso_local global i32 0, align 4
@LTDC_AWCR = common dso_local global i32 0, align 4
@AWCR_AAW = common dso_local global i32 0, align 4
@AWCR_AAH = common dso_local global i32 0, align 4
@LTDC_TWCR = common dso_local global i32 0, align 4
@TWCR_TOTALH = common dso_local global i32 0, align 4
@TWCR_TOTALW = common dso_local global i32 0, align 4
@LTDC_LIPCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @ltdc_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ltdc_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.ltdc_device*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.videomode, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %18 = call %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc* %17)
  store %struct.ltdc_device* %18, %struct.ltdc_device** %3, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 2
  %21 = load %struct.drm_device*, %struct.drm_device** %20, align 8
  store %struct.drm_device* %21, %struct.drm_device** %4, align 8
  %22 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %23 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store %struct.drm_display_mode* %25, %struct.drm_display_mode** %5, align 8
  %26 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %27 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @pm_runtime_active(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %1
  %32 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %33 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pm_runtime_get_sync(i32 %34)
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %212

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %43 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %42, %struct.videomode* %6)
  %44 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %55)
  %57 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i32, ...) @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68)
  %70 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 7
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %7, align 4
  %77 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %80, %82
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %84, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %10, align 4
  %89 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %88, %90
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %92, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %12, align 4
  %97 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %96, %98
  store i32 %99, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %100 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %41
  %106 = load i32, i32* @GCR_HSPOL, align 4
  %107 = load i32, i32* %15, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %105, %41
  %110 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 8
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32, i32* @GCR_VSPOL, align 4
  %117 = load i32, i32* %15, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %15, align 4
  br label %119

119:                                              ; preds = %115, %109
  %120 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %119
  %126 = load i32, i32* @GCR_DEPOL, align 4
  %127 = load i32, i32* %15, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %125, %119
  %130 = getelementptr inbounds %struct.videomode, %struct.videomode* %6, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i32, i32* @GCR_PCPOL, align 4
  %137 = load i32, i32* %15, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %15, align 4
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %141 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @LTDC_GCR, align 4
  %144 = load i32, i32* @GCR_HSPOL, align 4
  %145 = load i32, i32* @GCR_VSPOL, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @GCR_DEPOL, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @GCR_PCPOL, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %15, align 4
  %152 = call i32 @reg_update_bits(i32 %142, i32 %143, i32 %150, i32 %151)
  %153 = load i32, i32* %7, align 4
  %154 = shl i32 %153, 16
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %154, %155
  store i32 %156, i32* %15, align 4
  %157 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %158 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @LTDC_SSCR, align 4
  %161 = load i32, i32* @SSCR_VSH, align 4
  %162 = load i32, i32* @SSCR_HSW, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %15, align 4
  %165 = call i32 @reg_update_bits(i32 %159, i32 %160, i32 %163, i32 %164)
  %166 = load i32, i32* %9, align 4
  %167 = shl i32 %166, 16
  %168 = load i32, i32* %10, align 4
  %169 = or i32 %167, %168
  store i32 %169, i32* %15, align 4
  %170 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %171 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @LTDC_BPCR, align 4
  %174 = load i32, i32* @BPCR_AVBP, align 4
  %175 = load i32, i32* @BPCR_AHBP, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @reg_update_bits(i32 %172, i32 %173, i32 %176, i32 %177)
  %179 = load i32, i32* %11, align 4
  %180 = shl i32 %179, 16
  %181 = load i32, i32* %12, align 4
  %182 = or i32 %180, %181
  store i32 %182, i32* %15, align 4
  %183 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %184 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @LTDC_AWCR, align 4
  %187 = load i32, i32* @AWCR_AAW, align 4
  %188 = load i32, i32* @AWCR_AAH, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* %15, align 4
  %191 = call i32 @reg_update_bits(i32 %185, i32 %186, i32 %189, i32 %190)
  %192 = load i32, i32* %13, align 4
  %193 = shl i32 %192, 16
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %193, %194
  store i32 %195, i32* %15, align 4
  %196 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %197 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @LTDC_TWCR, align 4
  %200 = load i32, i32* @TWCR_TOTALH, align 4
  %201 = load i32, i32* @TWCR_TOTALW, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @reg_update_bits(i32 %198, i32 %199, i32 %202, i32 %203)
  %205 = load %struct.ltdc_device*, %struct.ltdc_device** %3, align 8
  %206 = getelementptr inbounds %struct.ltdc_device, %struct.ltdc_device* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @LTDC_LIPCR, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i32 @reg_write(i32 %207, i32 %208, i32 %210)
  br label %212

212:                                              ; preds = %139, %38
  ret void
}

declare dso_local %struct.ltdc_device* @crtc_to_ltdc(%struct.drm_crtc*) #1

declare dso_local i32 @pm_runtime_active(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i32, i32, ...) #1

declare dso_local i32 @reg_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
