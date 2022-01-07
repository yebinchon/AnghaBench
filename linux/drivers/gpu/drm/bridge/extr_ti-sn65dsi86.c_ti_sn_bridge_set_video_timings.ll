; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_set_video_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_ti-sn65dsi86.c_ti_sn_bridge_set_video_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_sn_bridge = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@CHA_HSYNC_POLARITY = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PVSYNC = common dso_local global i32 0, align 4
@CHA_VSYNC_POLARITY = common dso_local global i32 0, align 4
@SN_CHA_ACTIVE_LINE_LENGTH_LOW_REG = common dso_local global i32 0, align 4
@SN_CHA_VERTICAL_DISPLAY_SIZE_LOW_REG = common dso_local global i32 0, align 4
@SN_CHA_HSYNC_PULSE_WIDTH_LOW_REG = common dso_local global i32 0, align 4
@SN_CHA_HSYNC_PULSE_WIDTH_HIGH_REG = common dso_local global i32 0, align 4
@SN_CHA_VSYNC_PULSE_WIDTH_LOW_REG = common dso_local global i32 0, align 4
@SN_CHA_VSYNC_PULSE_WIDTH_HIGH_REG = common dso_local global i32 0, align 4
@SN_CHA_HORIZONTAL_BACK_PORCH_REG = common dso_local global i32 0, align 4
@SN_CHA_VERTICAL_BACK_PORCH_REG = common dso_local global i32 0, align 4
@SN_CHA_HORIZONTAL_FRONT_PORCH_REG = common dso_local global i32 0, align 4
@SN_CHA_VERTICAL_FRONT_PORCH_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_sn_bridge*)* @ti_sn_bridge_set_video_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sn_bridge_set_video_timings(%struct.ti_sn_bridge* %0) #0 {
  %2 = alloca %struct.ti_sn_bridge*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ti_sn_bridge* %0, %struct.ti_sn_bridge** %2, align 8
  %6 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %7 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.drm_display_mode* %14, %struct.drm_display_mode** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @CHA_HSYNC_POLARITY, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DRM_MODE_FLAG_PVSYNC, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @CHA_VSYNC_POLARITY, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %23
  %33 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %34 = load i32, i32* @SN_CHA_ACTIVE_LINE_LENGTH_LOW_REG, align 4
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ti_sn_bridge_write_u16(%struct.ti_sn_bridge* %33, i32 %34, i32 %37)
  %39 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %40 = load i32, i32* @SN_CHA_VERTICAL_DISPLAY_SIZE_LOW_REG, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ti_sn_bridge_write_u16(%struct.ti_sn_bridge* %39, i32 %40, i32 %43)
  %45 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %46 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SN_CHA_HSYNC_PULSE_WIDTH_LOW_REG, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %51, %54
  %56 = and i32 %55, 255
  %57 = call i32 @regmap_write(i32 %47, i32 %48, i32 %56)
  %58 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %59 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SN_CHA_HSYNC_PULSE_WIDTH_HIGH_REG, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %66 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = sub nsw i32 %64, %67
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 127
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @regmap_write(i32 %60, i32 %61, i32 %72)
  %74 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %75 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @SN_CHA_VSYNC_PULSE_WIDTH_LOW_REG, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %79 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %82 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = and i32 %84, 255
  %86 = call i32 @regmap_write(i32 %76, i32 %77, i32 %85)
  %87 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %88 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SN_CHA_VSYNC_PULSE_WIDTH_HIGH_REG, align 4
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %93, %96
  %98 = ashr i32 %97, 8
  %99 = and i32 %98, 127
  %100 = load i32, i32* %5, align 4
  %101 = or i32 %99, %100
  %102 = call i32 @regmap_write(i32 %89, i32 %90, i32 %101)
  %103 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %104 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @SN_CHA_HORIZONTAL_BACK_PORCH_REG, align 4
  %107 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %108 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %107, i32 0, i32 7
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %111 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %109, %112
  %114 = and i32 %113, 255
  %115 = call i32 @regmap_write(i32 %105, i32 %106, i32 %114)
  %116 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %117 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @SN_CHA_VERTICAL_BACK_PORCH_REG, align 4
  %120 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %121 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %124 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 %122, %125
  %127 = and i32 %126, 255
  %128 = call i32 @regmap_write(i32 %118, i32 %119, i32 %127)
  %129 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %130 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SN_CHA_HORIZONTAL_FRONT_PORCH_REG, align 4
  %133 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %134 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %137 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %135, %138
  %140 = and i32 %139, 255
  %141 = call i32 @regmap_write(i32 %131, i32 %132, i32 %140)
  %142 = load %struct.ti_sn_bridge*, %struct.ti_sn_bridge** %2, align 8
  %143 = getelementptr inbounds %struct.ti_sn_bridge, %struct.ti_sn_bridge* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @SN_CHA_VERTICAL_FRONT_PORCH_REG, align 4
  %146 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %147 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %146, i32 0, i32 6
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %150 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %148, %151
  %153 = and i32 %152, 255
  %154 = call i32 @regmap_write(i32 %144, i32 %145, i32 %153)
  %155 = call i32 @usleep_range(i32 10000, i32 10500)
  ret void
}

declare dso_local i32 @ti_sn_bridge_write_u16(%struct.ti_sn_bridge*, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
