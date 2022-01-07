; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_crtc_mode_set_nofb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_hibmc_crtc_mode_set_nofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.drm_device*, %struct.TYPE_2__* }
%struct.drm_device = type { %struct.hibmc_drm_private* }
%struct.hibmc_drm_private = type { i64 }
%struct.TYPE_2__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@HIBMC_CRT_PLL_CTRL = common dso_local global i64 0, align 8
@HIBMC_CRT_HORZ_TOTAL_TOTAL = common dso_local global i32 0, align 4
@HIBMC_CRT_HORZ_TOTAL_DISP_END = common dso_local global i32 0, align 4
@HIBMC_CRT_HORZ_TOTAL = common dso_local global i64 0, align 8
@HIBMC_CRT_HORZ_SYNC_WIDTH = common dso_local global i32 0, align 4
@HIBMC_CRT_HORZ_SYNC_START = common dso_local global i32 0, align 4
@HIBMC_CRT_HORZ_SYNC = common dso_local global i64 0, align 8
@HIBMC_CRT_VERT_TOTAL_TOTAL = common dso_local global i32 0, align 4
@HIBMC_CRT_VERT_TOTAL_DISP_END = common dso_local global i32 0, align 4
@HIBMC_CRT_VERT_TOTAL = common dso_local global i64 0, align 8
@HIBMC_CRT_VERT_SYNC_HEIGHT = common dso_local global i32 0, align 4
@HIBMC_CRT_VERT_SYNC_START = common dso_local global i32 0, align 4
@HIBMC_CRT_VERT_SYNC = common dso_local global i64 0, align 8
@HIBMC_CRT_DISP_CTL_VSYNC_PHASE = common dso_local global i32 0, align 4
@HIBMC_CRT_DISP_CTL_HSYNC_PHASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*)* @hibmc_crtc_mode_set_nofb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hibmc_crtc_mode_set_nofb(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca %struct.hibmc_drm_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %9 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %10 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %4, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %5, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %17 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %16, i32 0, i32 0
  %18 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %17, align 8
  store %struct.hibmc_drm_private* %18, %struct.hibmc_drm_private** %6, align 8
  %19 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %20 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %8, align 4
  %33 = call i32 (...) @format_pll_reg()
  %34 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %35 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HIBMC_CRT_PLL_CTRL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @writel(i32 %33, i64 %38)
  %40 = load i32, i32* @HIBMC_CRT_HORZ_TOTAL_TOTAL, align 4
  %41 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %42 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = call i32 @HIBMC_FIELD(i32 %40, i32 %44)
  %46 = load i32, i32* @HIBMC_CRT_HORZ_TOTAL_DISP_END, align 4
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %48 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @HIBMC_FIELD(i32 %46, i32 %50)
  %52 = or i32 %45, %51
  %53 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %54 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HIBMC_CRT_HORZ_TOTAL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  %59 = load i32, i32* @HIBMC_CRT_HORZ_SYNC_WIDTH, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @HIBMC_FIELD(i32 %59, i32 %60)
  %62 = load i32, i32* @HIBMC_CRT_HORZ_SYNC_START, align 4
  %63 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %64 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = call i32 @HIBMC_FIELD(i32 %62, i32 %66)
  %68 = or i32 %61, %67
  %69 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %70 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @HIBMC_CRT_HORZ_SYNC, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load i32, i32* @HIBMC_CRT_VERT_TOTAL_TOTAL, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @HIBMC_FIELD(i32 %75, i32 %79)
  %81 = load i32, i32* @HIBMC_CRT_VERT_TOTAL_DISP_END, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %83 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  %86 = call i32 @HIBMC_FIELD(i32 %81, i32 %85)
  %87 = or i32 %80, %86
  %88 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %89 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HIBMC_CRT_VERT_TOTAL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  %94 = load i32, i32* @HIBMC_CRT_VERT_SYNC_HEIGHT, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @HIBMC_FIELD(i32 %94, i32 %95)
  %97 = load i32, i32* @HIBMC_CRT_VERT_SYNC_START, align 4
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 %100, 1
  %102 = call i32 @HIBMC_FIELD(i32 %97, i32 %101)
  %103 = or i32 %96, %102
  %104 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %6, align 8
  %105 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @HIBMC_CRT_VERT_SYNC, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @writel(i32 %103, i64 %108)
  %110 = load i32, i32* @HIBMC_CRT_DISP_CTL_VSYNC_PHASE, align 4
  %111 = call i32 @HIBMC_FIELD(i32 %110, i32 0)
  store i32 %111, i32* %3, align 4
  %112 = load i32, i32* @HIBMC_CRT_DISP_CTL_HSYNC_PHASE, align 4
  %113 = call i32 @HIBMC_FIELD(i32 %112, i32 0)
  %114 = load i32, i32* %3, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %3, align 4
  %116 = call i32 @HIBMC_CRT_DISP_CTL_TIMING(i32 1)
  %117 = load i32, i32* %3, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %3, align 4
  %119 = call i32 @HIBMC_CRT_DISP_CTL_PLANE(i32 1)
  %120 = load i32, i32* %3, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %3, align 4
  %122 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %123 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @display_ctrl_adjust(%struct.drm_device* %122, %struct.drm_display_mode* %123, i32 %124)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @format_pll_reg(...) #1

declare dso_local i32 @HIBMC_FIELD(i32, i32) #1

declare dso_local i32 @HIBMC_CRT_DISP_CTL_TIMING(i32) #1

declare dso_local i32 @HIBMC_CRT_DISP_CTL_PLANE(i32) #1

declare dso_local i32 @display_ctrl_adjust(%struct.drm_device*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
