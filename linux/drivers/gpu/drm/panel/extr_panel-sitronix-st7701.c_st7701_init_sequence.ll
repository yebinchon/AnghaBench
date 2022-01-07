; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_init_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/panel/extr_panel-sitronix-st7701.c_st7701_init_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st7701 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i32 }

@MIPI_DCS_SOFT_RESET = common dso_local global i32 0, align 4
@MIPI_DCS_EXIT_SLEEP_MODE = common dso_local global i32 0, align 4
@DSI_CMD2BKX_SEL = common dso_local global i32 0, align 4
@DSI_CMD2BK0_SEL = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_PVGAMCTRL = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_NVGAMCTRL = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_LNESET = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_LNESET_B0 = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_LNESET_B1 = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_PORCTRL = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_INVSEL = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_INVSEL_B0 = common dso_local global i32 0, align 4
@DSI_CMD2_BK0_INVSEL_B1 = common dso_local global i32 0, align 4
@DSI_CMD2BK1_SEL = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VRHS = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VRHA_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VCOM = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VCOM_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VGHSS = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VGHSS_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_TESTCMD = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_TESTCMD_VAL = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VGLS = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_VGLS_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_PWCTLR1 = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_PWCTLR1_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_PWCTLR2 = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_PWCTLR2_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_SPD1 = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_SPD1_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_SPD2 = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_SPD2_SET = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_MIPISET1 = common dso_local global i32 0, align 4
@DSI_CMD2_BK1_MIPISET1_SET = common dso_local global i32 0, align 4
@DSI_CMD2BKX_SEL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.st7701*)* @st7701_init_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st7701_init_sequence(%struct.st7701* %0) #0 {
  %2 = alloca %struct.st7701*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  store %struct.st7701* %0, %struct.st7701** %2, align 8
  %4 = load %struct.st7701*, %struct.st7701** %2, align 8
  %5 = getelementptr inbounds %struct.st7701, %struct.st7701* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  store %struct.drm_display_mode* %8, %struct.drm_display_mode** %3, align 8
  %9 = load %struct.st7701*, %struct.st7701** %2, align 8
  %10 = load i32, i32* @MIPI_DCS_SOFT_RESET, align 4
  %11 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %9, i32 %10, i32 0)
  %12 = call i32 @msleep(i32 5)
  %13 = load %struct.st7701*, %struct.st7701** %2, align 8
  %14 = load i32, i32* @MIPI_DCS_EXIT_SLEEP_MODE, align 4
  %15 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %13, i32 %14, i32 0)
  %16 = load %struct.st7701*, %struct.st7701** %2, align 8
  %17 = getelementptr inbounds %struct.st7701, %struct.st7701* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @msleep(i32 %18)
  %20 = load %struct.st7701*, %struct.st7701** %2, align 8
  %21 = load i32, i32* @DSI_CMD2BKX_SEL, align 4
  %22 = load i32, i32* @DSI_CMD2BK0_SEL, align 4
  %23 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %20, i32 %21, i32 119, i32 1, i32 0, i32 0, i32 %22)
  %24 = load %struct.st7701*, %struct.st7701** %2, align 8
  %25 = load i32, i32* @DSI_CMD2_BK0_PVGAMCTRL, align 4
  %26 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %24, i32 %25, i32 0, i32 14, i32 21, i32 15, i32 17, i32 8, i32 8, i32 8, i32 8, i32 35, i32 4, i32 19, i32 18, i32 43, i32 52, i32 31)
  %27 = load %struct.st7701*, %struct.st7701** %2, align 8
  %28 = load i32, i32* @DSI_CMD2_BK0_NVGAMCTRL, align 4
  %29 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %27, i32 %28, i32 0, i32 14, i32 149, i32 15, i32 19, i32 7, i32 9, i32 8, i32 8, i32 34, i32 4, i32 16, i32 14, i32 44, i32 52, i32 31)
  %30 = load %struct.st7701*, %struct.st7701** %2, align 8
  %31 = load i32, i32* @DSI_CMD2_BK0_LNESET, align 4
  %32 = load i32, i32* @DSI_CMD2_BK0_LNESET_B0, align 4
  %33 = load i32, i32* @DSI_CMD2_BK0_LNESET_B1, align 4
  %34 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.st7701*, %struct.st7701** %2, align 8
  %36 = load i32, i32* @DSI_CMD2_BK0_PORCTRL, align 4
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %38 = call i32 @DSI_CMD2_BK0_PORCTRL_B0(%struct.drm_display_mode* %37)
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %40 = call i32 @DSI_CMD2_BK0_PORCTRL_B1(%struct.drm_display_mode* %39)
  %41 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %35, i32 %36, i32 %38, i32 %40)
  %42 = load %struct.st7701*, %struct.st7701** %2, align 8
  %43 = load i32, i32* @DSI_CMD2_BK0_INVSEL, align 4
  %44 = load i32, i32* @DSI_CMD2_BK0_INVSEL_B0, align 4
  %45 = load i32, i32* @DSI_CMD2_BK0_INVSEL_B1, align 4
  %46 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.st7701*, %struct.st7701** %2, align 8
  %48 = load i32, i32* @DSI_CMD2BKX_SEL, align 4
  %49 = load i32, i32* @DSI_CMD2BK1_SEL, align 4
  %50 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %47, i32 %48, i32 119, i32 1, i32 0, i32 0, i32 %49)
  %51 = load %struct.st7701*, %struct.st7701** %2, align 8
  %52 = load i32, i32* @DSI_CMD2_BK1_VRHS, align 4
  %53 = load i32, i32* @DSI_CMD2_BK1_VRHA_SET, align 4
  %54 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %51, i32 %52, i32 %53)
  %55 = load %struct.st7701*, %struct.st7701** %2, align 8
  %56 = load i32, i32* @DSI_CMD2_BK1_VCOM, align 4
  %57 = load i32, i32* @DSI_CMD2_BK1_VCOM_SET, align 4
  %58 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %55, i32 %56, i32 %57)
  %59 = load %struct.st7701*, %struct.st7701** %2, align 8
  %60 = load i32, i32* @DSI_CMD2_BK1_VGHSS, align 4
  %61 = load i32, i32* @DSI_CMD2_BK1_VGHSS_SET, align 4
  %62 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %59, i32 %60, i32 %61)
  %63 = load %struct.st7701*, %struct.st7701** %2, align 8
  %64 = load i32, i32* @DSI_CMD2_BK1_TESTCMD, align 4
  %65 = load i32, i32* @DSI_CMD2_BK1_TESTCMD_VAL, align 4
  %66 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %63, i32 %64, i32 %65)
  %67 = load %struct.st7701*, %struct.st7701** %2, align 8
  %68 = load i32, i32* @DSI_CMD2_BK1_VGLS, align 4
  %69 = load i32, i32* @DSI_CMD2_BK1_VGLS_SET, align 4
  %70 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %67, i32 %68, i32 %69)
  %71 = load %struct.st7701*, %struct.st7701** %2, align 8
  %72 = load i32, i32* @DSI_CMD2_BK1_PWCTLR1, align 4
  %73 = load i32, i32* @DSI_CMD2_BK1_PWCTLR1_SET, align 4
  %74 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %71, i32 %72, i32 %73)
  %75 = load %struct.st7701*, %struct.st7701** %2, align 8
  %76 = load i32, i32* @DSI_CMD2_BK1_PWCTLR2, align 4
  %77 = load i32, i32* @DSI_CMD2_BK1_PWCTLR2_SET, align 4
  %78 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %75, i32 %76, i32 %77)
  %79 = load %struct.st7701*, %struct.st7701** %2, align 8
  %80 = load i32, i32* @DSI_CMD2_BK1_SPD1, align 4
  %81 = load i32, i32* @DSI_CMD2_BK1_SPD1_SET, align 4
  %82 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %79, i32 %80, i32 %81)
  %83 = load %struct.st7701*, %struct.st7701** %2, align 8
  %84 = load i32, i32* @DSI_CMD2_BK1_SPD2, align 4
  %85 = load i32, i32* @DSI_CMD2_BK1_SPD2_SET, align 4
  %86 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %83, i32 %84, i32 %85)
  %87 = load %struct.st7701*, %struct.st7701** %2, align 8
  %88 = load i32, i32* @DSI_CMD2_BK1_MIPISET1, align 4
  %89 = load i32, i32* @DSI_CMD2_BK1_MIPISET1_SET, align 4
  %90 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %87, i32 %88, i32 %89)
  %91 = load %struct.st7701*, %struct.st7701** %2, align 8
  %92 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %91, i32 224, i32 0, i32 0, i32 2)
  %93 = load %struct.st7701*, %struct.st7701** %2, align 8
  %94 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %93, i32 225, i32 11, i32 0, i32 13, i32 0, i32 12, i32 0, i32 14, i32 0, i32 0, i32 68, i32 68)
  %95 = load %struct.st7701*, %struct.st7701** %2, align 8
  %96 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %95, i32 226, i32 51, i32 51, i32 68, i32 68, i32 100, i32 0, i32 102, i32 0, i32 101, i32 0, i32 103, i32 0, i32 0)
  %97 = load %struct.st7701*, %struct.st7701** %2, align 8
  %98 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %97, i32 227, i32 0, i32 0, i32 51, i32 51)
  %99 = load %struct.st7701*, %struct.st7701** %2, align 8
  %100 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %99, i32 228, i32 68, i32 68)
  %101 = load %struct.st7701*, %struct.st7701** %2, align 8
  %102 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %101, i32 229, i32 12, i32 120, i32 60, i32 160, i32 14, i32 120, i32 60, i32 160, i32 16, i32 120, i32 60, i32 160, i32 18, i32 120, i32 60, i32 160)
  %103 = load %struct.st7701*, %struct.st7701** %2, align 8
  %104 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %103, i32 230, i32 0, i32 0, i32 51, i32 51)
  %105 = load %struct.st7701*, %struct.st7701** %2, align 8
  %106 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %105, i32 231, i32 68, i32 68)
  %107 = load %struct.st7701*, %struct.st7701** %2, align 8
  %108 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %107, i32 232, i32 13, i32 120, i32 60, i32 160, i32 15, i32 120, i32 60, i32 160, i32 17, i32 120, i32 60, i32 160, i32 19, i32 120, i32 60, i32 160)
  %109 = load %struct.st7701*, %struct.st7701** %2, align 8
  %110 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %109, i32 235, i32 2, i32 2, i32 57, i32 57, i32 238, i32 68, i32 0)
  %111 = load %struct.st7701*, %struct.st7701** %2, align 8
  %112 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %111, i32 236, i32 0, i32 0)
  %113 = load %struct.st7701*, %struct.st7701** %2, align 8
  %114 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %113, i32 237, i32 255, i32 241, i32 4, i32 86, i32 114, i32 63, i32 255, i32 255, i32 255, i32 255, i32 243, i32 39, i32 101, i32 64, i32 31, i32 255)
  %115 = load %struct.st7701*, %struct.st7701** %2, align 8
  %116 = load i32, i32* @DSI_CMD2BKX_SEL, align 4
  %117 = load i32, i32* @DSI_CMD2BKX_SEL_NONE, align 4
  %118 = call i32 (%struct.st7701*, i32, i32, ...) @ST7701_DSI(%struct.st7701* %115, i32 %116, i32 119, i32 1, i32 0, i32 0, i32 %117)
  ret void
}

declare dso_local i32 @ST7701_DSI(%struct.st7701*, i32, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DSI_CMD2_BK0_PORCTRL_B0(%struct.drm_display_mode*) #1

declare dso_local i32 @DSI_CMD2_BK0_PORCTRL_B1(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
