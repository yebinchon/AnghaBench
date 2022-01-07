; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_display_ctrl_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/hisilicon/hibmc/extr_hibmc_drm_de.c_display_ctrl_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.hibmc_drm_private* }
%struct.hibmc_drm_private = type { i64 }
%struct.drm_display_mode = type { i64, i64 }

@CRT_PLL2_HS = common dso_local global i64 0, align 8
@HIBMC_CRT_AUTO_CENTERING_TL_TOP = common dso_local global i32 0, align 4
@HIBMC_CRT_AUTO_CENTERING_TL_LEFT = common dso_local global i32 0, align 4
@HIBMC_CRT_AUTO_CENTERING_TL = common dso_local global i64 0, align 8
@HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM = common dso_local global i32 0, align 4
@HIBMC_CRT_AUTO_CENTERING_BR_RIGHT = common dso_local global i32 0, align 4
@HIBMC_CRT_AUTO_CENTERING_BR = common dso_local global i64 0, align 8
@HIBMC_CRT_DISP_CTL_CRTSELECT_MASK = common dso_local global i32 0, align 4
@HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK = common dso_local global i32 0, align 4
@HIBMC_CRTSELECT_CRT = common dso_local global i32 0, align 4
@HIBMC_CRT_DISP_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, %struct.drm_display_mode*, i32)* @display_ctrl_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_ctrl_adjust(%struct.drm_device* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hibmc_drm_private*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %13 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %12, i32 0, i32 0
  %14 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %13, align 8
  store %struct.hibmc_drm_private* %14, %struct.hibmc_drm_private** %11, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @get_pll_config(i64 %21, i64 %22, i32* %9, i32* %10)
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %11, align 8
  %26 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CRT_PLL2_HS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @set_vclock_hisilicon(%struct.drm_device* %31, i32 %32)
  %34 = load i32, i32* @HIBMC_CRT_AUTO_CENTERING_TL_TOP, align 4
  %35 = call i32 @HIBMC_FIELD(i32 %34, i64 0)
  %36 = load i32, i32* @HIBMC_CRT_AUTO_CENTERING_TL_LEFT, align 4
  %37 = call i32 @HIBMC_FIELD(i32 %36, i64 0)
  %38 = or i32 %35, %37
  %39 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %11, align 8
  %40 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @HIBMC_CRT_AUTO_CENTERING_TL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load i32, i32* @HIBMC_CRT_AUTO_CENTERING_BR_BOTTOM, align 4
  %46 = load i64, i64* %8, align 8
  %47 = sub i64 %46, 1
  %48 = call i32 @HIBMC_FIELD(i32 %45, i64 %47)
  %49 = load i32, i32* @HIBMC_CRT_AUTO_CENTERING_BR_RIGHT, align 4
  %50 = load i64, i64* %7, align 8
  %51 = sub i64 %50, 1
  %52 = call i32 @HIBMC_FIELD(i32 %49, i64 %51)
  %53 = or i32 %48, %52
  %54 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %11, align 8
  %55 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @HIBMC_CRT_AUTO_CENTERING_BR, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 %53, i64 %58)
  %60 = load i32, i32* @HIBMC_CRT_DISP_CTL_CRTSELECT_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* @HIBMC_CRT_DISP_CTL_CLOCK_PHASE_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* @HIBMC_CRTSELECT_CRT, align 4
  %69 = call i32 @HIBMC_CRT_DISP_CTL_CRTSELECT(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = call i32 @HIBMC_CRT_DISP_CTL_CLOCK_PHASE(i32 0)
  %73 = load i32, i32* %6, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.hibmc_drm_private*, %struct.hibmc_drm_private** %11, align 8
  %77 = getelementptr inbounds %struct.hibmc_drm_private, %struct.hibmc_drm_private* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @HIBMC_CRT_DISP_CTL, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 %75, i64 %80)
  %82 = load i32, i32* %6, align 4
  ret i32 %82
}

declare dso_local i32 @get_pll_config(i64, i64, i32*, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @set_vclock_hisilicon(%struct.drm_device*, i32) #1

declare dso_local i32 @HIBMC_FIELD(i32, i64) #1

declare dso_local i32 @HIBMC_CRT_DISP_CTL_CRTSELECT(i32) #1

declare dso_local i32 @HIBMC_CRT_DISP_CTL_CLOCK_PHASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
