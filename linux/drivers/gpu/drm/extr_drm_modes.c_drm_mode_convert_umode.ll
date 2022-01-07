; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_convert_umode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_convert_umode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i64, i64, i32, i32, i64, i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_mode_modeinfo = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@INT_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_ALL = common dso_local global i32 0, align 4
@DRM_DISPLAY_MODE_LEN = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PIC_AR_MASK = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_4_3 = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_16_9 = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_64_27 = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_256_135 = common dso_local global i32 0, align 4
@HDMI_PICTURE_ASPECT_NONE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i64 0, align 8
@CRTC_INTERLACE_HALVE_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_convert_umode(%struct.drm_device* %0, %struct.drm_display_mode* %1, %struct.drm_mode_modeinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_mode_modeinfo*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_mode_modeinfo* %2, %struct.drm_mode_modeinfo** %7, align 8
  %8 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %9 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %15 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INT_MAX, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %13, %3
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %162

22:                                               ; preds = %13
  %23 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %24 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %29 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %28, i32 0, i32 14
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 16
  store i32 %30, i32* %32, align 4
  %33 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %34 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %33, i32 0, i32 13
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 15
  store i32 %35, i32* %37, align 8
  %38 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %39 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 14
  store i32 %40, i32* %42, align 4
  %43 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %44 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %43, i32 0, i32 11
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 13
  store i32 %45, i32* %47, align 8
  %48 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %49 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %54 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %53, i32 0, i32 9
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 11
  store i32 %55, i32* %57, align 8
  %58 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %59 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 4
  %63 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %64 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %69 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %72 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 4
  %73 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %74 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 8
  %78 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %79 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %84 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %87 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DRM_MODE_TYPE_ALL, align 4
  %92 = and i32 %90, %91
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %96 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %95, i32 0, i32 6
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %99 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %102 = call i32 @strncpy(i64* %97, i32 %100, i32 %101)
  %103 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %104 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %103, i32 0, i32 6
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* @DRM_DISPLAY_MODE_LEN, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  store i64 0, i64* %109, align 8
  %110 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_MASK, align 4
  %111 = xor i32 %110, -1
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = and i32 %114, %111
  store i32 %115, i32* %113, align 8
  %116 = load %struct.drm_mode_modeinfo*, %struct.drm_mode_modeinfo** %7, align 8
  %117 = getelementptr inbounds %struct.drm_mode_modeinfo, %struct.drm_mode_modeinfo* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @DRM_MODE_FLAG_PIC_AR_MASK, align 4
  %120 = and i32 %118, %119
  switch i32 %120, label %141 [
    i32 130, label %121
    i32 132, label %125
    i32 129, label %129
    i32 131, label %133
    i32 128, label %137
  ]

121:                                              ; preds = %22
  %122 = load i32, i32* @HDMI_PICTURE_ASPECT_4_3, align 4
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  br label %144

125:                                              ; preds = %22
  %126 = load i32, i32* @HDMI_PICTURE_ASPECT_16_9, align 4
  %127 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %128 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  br label %144

129:                                              ; preds = %22
  %130 = load i32, i32* @HDMI_PICTURE_ASPECT_64_27, align 4
  %131 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %132 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  br label %144

133:                                              ; preds = %22
  %134 = load i32, i32* @HDMI_PICTURE_ASPECT_256_135, align 4
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  br label %144

137:                                              ; preds = %22
  %138 = load i32, i32* @HDMI_PICTURE_ASPECT_NONE, align 4
  %139 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %140 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 8
  br label %144

141:                                              ; preds = %22
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %162

144:                                              ; preds = %137, %133, %129, %125, %121
  %145 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %147 = call i64 @drm_mode_validate_driver(%struct.drm_device* %145, %struct.drm_display_mode* %146)
  %148 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %149 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %148, i32 0, i32 4
  store i64 %147, i64* %149, align 8
  %150 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %151 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @MODE_OK, align 8
  %154 = icmp ne i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %144
  %156 = load i32, i32* @EINVAL, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %162

158:                                              ; preds = %144
  %159 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %160 = load i32, i32* @CRTC_INTERLACE_HALVE_V, align 4
  %161 = call i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode* %159, i32 %160)
  store i32 0, i32* %4, align 4
  br label %162

162:                                              ; preds = %158, %155, %141, %19
  %163 = load i32, i32* %4, align 4
  ret i32 %163
}

declare dso_local i32 @strncpy(i64*, i32, i32) #1

declare dso_local i64 @drm_mode_validate_driver(%struct.drm_device*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_crtcinfo(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
