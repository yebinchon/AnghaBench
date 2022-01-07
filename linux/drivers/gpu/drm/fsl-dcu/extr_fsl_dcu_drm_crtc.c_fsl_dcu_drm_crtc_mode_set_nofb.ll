; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_crtc.c_fsl_dcu_drm_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/fsl-dcu/extr_fsl_dcu_drm_crtc.c_fsl_dcu_drm_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__*, %struct.drm_device* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }
%struct.drm_device = type { %struct.fsl_dcu_drm_device* }
%struct.fsl_dcu_drm_device = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_connector }
%struct.drm_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE = common dso_local global i32 0, align 4
@DCU_SYN_POL_INV_PXCK = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@DCU_SYN_POL_INV_HS_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@DCU_SYN_POL_INV_VS_LOW = common dso_local global i32 0, align 4
@DCU_HSYN_PARA = common dso_local global i32 0, align 4
@DCU_VSYN_PARA = common dso_local global i32 0, align 4
@DCU_DISP_SIZE = common dso_local global i32 0, align 4
@DCU_SYN_POL = common dso_local global i32 0, align 4
@DCU_BGND = common dso_local global i32 0, align 4
@DCU_DCU_MODE = common dso_local global i32 0, align 4
@DCU_MODE_RASTER_EN = common dso_local global i32 0, align 4
@DCU_THRESHOLD = common dso_local global i32 0, align 4
@BF_VS_VAL = common dso_local global i32 0, align 4
@BUF_MAX_VAL = common dso_local global i32 0, align 4
@BUF_MIN_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @fsl_dcu_drm_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_dcu_drm_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.fsl_dcu_drm_device*, align 8
  %5 = alloca %struct.drm_connector*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.videomode, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 1
  %11 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  store %struct.drm_device* %11, %struct.drm_device** %3, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %13, align 8
  store %struct.fsl_dcu_drm_device* %14, %struct.fsl_dcu_drm_device** %4, align 8
  %15 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %16 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.drm_connector* %17, %struct.drm_connector** %5, align 8
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %19 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.drm_display_mode* %21, %struct.drm_display_mode** %6, align 8
  store i32 0, i32* %7, align 4
  %22 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %23 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 1000
  %29 = call i32 @clk_set_rate(i32 %24, i32 %28)
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = call i32 @drm_display_mode_to_videomode(%struct.drm_display_mode* %30, %struct.videomode* %8)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %5, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* @DCU_SYN_POL_INV_PXCK, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %39, %1
  %44 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @DCU_SYN_POL_INV_HS_LOW, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %43
  %54 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load i32, i32* @DCU_SYN_POL_INV_VS_LOW, align 4
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %59, %53
  %64 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %65 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @DCU_HSYN_PARA, align 4
  %68 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @DCU_HSYN_PARA_BP(i32 %69)
  %71 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @DCU_HSYN_PARA_PW(i32 %72)
  %74 = or i32 %70, %73
  %75 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @DCU_HSYN_PARA_FP(i32 %76)
  %78 = or i32 %74, %77
  %79 = call i32 @regmap_write(i32 %66, i32 %67, i32 %78)
  %80 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %81 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DCU_VSYN_PARA, align 4
  %84 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @DCU_VSYN_PARA_BP(i32 %85)
  %87 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @DCU_VSYN_PARA_PW(i32 %88)
  %90 = or i32 %86, %89
  %91 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @DCU_VSYN_PARA_FP(i32 %92)
  %94 = or i32 %90, %93
  %95 = call i32 @regmap_write(i32 %82, i32 %83, i32 %94)
  %96 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %97 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @DCU_DISP_SIZE, align 4
  %100 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @DCU_DISP_SIZE_DELTA_Y(i32 %101)
  %103 = getelementptr inbounds %struct.videomode, %struct.videomode* %8, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @DCU_DISP_SIZE_DELTA_X(i32 %104)
  %106 = or i32 %102, %105
  %107 = call i32 @regmap_write(i32 %98, i32 %99, i32 %106)
  %108 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %109 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DCU_SYN_POL, align 4
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @regmap_write(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %115 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DCU_BGND, align 4
  %118 = call i32 @DCU_BGND_R(i32 0)
  %119 = call i32 @DCU_BGND_G(i32 0)
  %120 = or i32 %118, %119
  %121 = call i32 @DCU_BGND_B(i32 0)
  %122 = or i32 %120, %121
  %123 = call i32 @regmap_write(i32 %116, i32 %117, i32 %122)
  %124 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %125 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @DCU_DCU_MODE, align 4
  %128 = call i32 @DCU_MODE_BLEND_ITER(i32 1)
  %129 = load i32, i32* @DCU_MODE_RASTER_EN, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @regmap_write(i32 %126, i32 %127, i32 %130)
  %132 = load %struct.fsl_dcu_drm_device*, %struct.fsl_dcu_drm_device** %4, align 8
  %133 = getelementptr inbounds %struct.fsl_dcu_drm_device, %struct.fsl_dcu_drm_device* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @DCU_THRESHOLD, align 4
  %136 = load i32, i32* @BF_VS_VAL, align 4
  %137 = call i32 @DCU_THRESHOLD_LS_BF_VS(i32 %136)
  %138 = load i32, i32* @BUF_MAX_VAL, align 4
  %139 = call i32 @DCU_THRESHOLD_OUT_BUF_HIGH(i32 %138)
  %140 = or i32 %137, %139
  %141 = load i32, i32* @BUF_MIN_VAL, align 4
  %142 = call i32 @DCU_THRESHOLD_OUT_BUF_LOW(i32 %141)
  %143 = or i32 %140, %142
  %144 = call i32 @regmap_write(i32 %134, i32 %135, i32 %143)
  ret void
}

declare dso_local i32 @clk_set_rate(i32, i32) #1

declare dso_local i32 @drm_display_mode_to_videomode(%struct.drm_display_mode*, %struct.videomode*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DCU_HSYN_PARA_BP(i32) #1

declare dso_local i32 @DCU_HSYN_PARA_PW(i32) #1

declare dso_local i32 @DCU_HSYN_PARA_FP(i32) #1

declare dso_local i32 @DCU_VSYN_PARA_BP(i32) #1

declare dso_local i32 @DCU_VSYN_PARA_PW(i32) #1

declare dso_local i32 @DCU_VSYN_PARA_FP(i32) #1

declare dso_local i32 @DCU_DISP_SIZE_DELTA_Y(i32) #1

declare dso_local i32 @DCU_DISP_SIZE_DELTA_X(i32) #1

declare dso_local i32 @DCU_BGND_R(i32) #1

declare dso_local i32 @DCU_BGND_G(i32) #1

declare dso_local i32 @DCU_BGND_B(i32) #1

declare dso_local i32 @DCU_MODE_BLEND_ITER(i32) #1

declare dso_local i32 @DCU_THRESHOLD_LS_BF_VS(i32) #1

declare dso_local i32 @DCU_THRESHOLD_OUT_BUF_HIGH(i32) #1

declare dso_local i32 @DCU_THRESHOLD_OUT_BUF_LOW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
