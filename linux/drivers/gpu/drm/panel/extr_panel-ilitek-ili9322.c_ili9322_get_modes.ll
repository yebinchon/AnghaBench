; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-ilitek-ili9322.c_ili9322_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_panel = type { i32, %struct.drm_connector* }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32, i32 }
%struct.ili9322 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64 }
%struct.drm_display_mode = type { i32, i32, i32, i32 }

@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_HIGH = common dso_local global i32 0, align 4
@DRM_BUS_FLAG_DE_LOW = common dso_local global i32 0, align 4
@srgb_320x240_mode = common dso_local global i32 0, align 4
@srgb_360x240_mode = common dso_local global i32 0, align 4
@prgb_320x240_mode = common dso_local global i32 0, align 4
@yuv_640x320_mode = common dso_local global i32 0, align 4
@yuv_720x360_mode = common dso_local global i32 0, align 4
@itu_r_bt_656_720_mode = common dso_local global i32 0, align 4
@itu_r_bt_656_640_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"bad mode or failed to add mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_NVSYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_panel*)* @ili9322_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ili9322_get_modes(%struct.drm_panel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_panel*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.ili9322*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_info*, align 8
  store %struct.drm_panel* %0, %struct.drm_panel** %3, align 8
  %8 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %9 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %8, i32 0, i32 1
  %10 = load %struct.drm_connector*, %struct.drm_connector** %9, align 8
  store %struct.drm_connector* %10, %struct.drm_connector** %4, align 8
  %11 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %12 = call %struct.ili9322* @panel_to_ili9322(%struct.drm_panel* %11)
  store %struct.ili9322* %12, %struct.ili9322** %5, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  store %struct.drm_display_info* %14, %struct.drm_display_info** %7, align 8
  %15 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %16 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %21 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %23 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %28 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %30 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %1
  %36 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %37 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %38 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %47

41:                                               ; preds = %1
  %42 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE, align 4
  %43 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %44 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %49 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @DRM_BUS_FLAG_DE_HIGH, align 4
  %56 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %57 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %66

60:                                               ; preds = %47
  %61 = load i32, i32* @DRM_BUS_FLAG_DE_LOW, align 4
  %62 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %63 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %68 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %105 [
    i32 131, label %70
    i32 130, label %75
    i32 132, label %80
    i32 133, label %80
    i32 129, label %85
    i32 128, label %90
    i32 134, label %95
    i32 135, label %100
  ]

70:                                               ; preds = %66
  %71 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %72 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %73, i32* @srgb_320x240_mode)
  store %struct.drm_display_mode* %74, %struct.drm_display_mode** %6, align 8
  br label %106

75:                                               ; preds = %66
  %76 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %77 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %78, i32* @srgb_360x240_mode)
  store %struct.drm_display_mode* %79, %struct.drm_display_mode** %6, align 8
  br label %106

80:                                               ; preds = %66, %66
  %81 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %82 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %83, i32* @prgb_320x240_mode)
  store %struct.drm_display_mode* %84, %struct.drm_display_mode** %6, align 8
  br label %106

85:                                               ; preds = %66
  %86 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %87 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %88, i32* @yuv_640x320_mode)
  store %struct.drm_display_mode* %89, %struct.drm_display_mode** %6, align 8
  br label %106

90:                                               ; preds = %66
  %91 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %92 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %93, i32* @yuv_720x360_mode)
  store %struct.drm_display_mode* %94, %struct.drm_display_mode** %6, align 8
  br label %106

95:                                               ; preds = %66
  %96 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %97 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %98, i32* @itu_r_bt_656_720_mode)
  store %struct.drm_display_mode* %99, %struct.drm_display_mode** %6, align 8
  br label %106

100:                                              ; preds = %66
  %101 = load %struct.drm_panel*, %struct.drm_panel** %3, align 8
  %102 = getelementptr inbounds %struct.drm_panel, %struct.drm_panel* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %103, i32* @itu_r_bt_656_640_mode)
  store %struct.drm_display_mode* %104, %struct.drm_display_mode** %6, align 8
  br label %106

105:                                              ; preds = %66
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %6, align 8
  br label %106

106:                                              ; preds = %105, %100, %95, %90, %85, %80, %75, %70
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %108 = icmp ne %struct.drm_display_mode* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %176

113:                                              ; preds = %106
  %114 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %115 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %114)
  %116 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %117 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %120 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %122 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %113
  %128 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %129 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %130 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %139

133:                                              ; preds = %113
  %134 = load i32, i32* @DRM_MODE_FLAG_NHSYNC, align 4
  %135 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %136 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %127
  %140 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %141 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %140, i32 0, i32 1
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %148 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %149 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %158

152:                                              ; preds = %139
  %153 = load i32, i32* @DRM_MODE_FLAG_NVSYNC, align 4
  %154 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %155 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %152, %146
  %159 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %160 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %165 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  %166 = load %struct.ili9322*, %struct.ili9322** %5, align 8
  %167 = getelementptr inbounds %struct.ili9322, %struct.ili9322* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %172 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %174 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %175 = call i32 @drm_mode_probed_add(%struct.drm_connector* %173, %struct.drm_display_mode* %174)
  store i32 1, i32* %2, align 4
  br label %176

176:                                              ; preds = %158, %109
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local %struct.ili9322* @panel_to_ili9322(%struct.drm_panel*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
