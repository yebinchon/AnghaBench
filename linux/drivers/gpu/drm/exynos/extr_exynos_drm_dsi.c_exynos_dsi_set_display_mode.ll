; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_display_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_dsi.c_exynos_dsi_set_display_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_dsi = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i64, i64, i64, i64, i64, i64, i64, i64 }

@MIPI_DSI_MODE_VIDEO = common dso_local global i32 0, align 4
@DSIM_MVPORCH_REG = common dso_local global i32 0, align 4
@DSIM_MHPORCH_REG = common dso_local global i32 0, align 4
@DSIM_MSYNC_REG = common dso_local global i32 0, align 4
@DSIM_MDRESOL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LCD size = %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_dsi*)* @exynos_dsi_set_display_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_dsi_set_display_mode(%struct.exynos_dsi* %0) #0 {
  %2 = alloca %struct.exynos_dsi*, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_dsi* %0, %struct.exynos_dsi** %2, align 8
  %6 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %7 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.drm_display_mode* %12, %struct.drm_display_mode** %3, align 8
  %13 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %14 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %19 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MIPI_DSI_MODE_VIDEO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %90

24:                                               ; preds = %1
  %25 = call i32 @DSIM_CMD_ALLOW(i32 15)
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = call i32 @DSIM_STABLE_VFP(i64 %32)
  %34 = or i32 %25, %33
  %35 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %36 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = sub nsw i64 %37, %40
  %42 = call i32 @DSIM_MAIN_VBP(i64 %41)
  %43 = or i32 %34, %42
  store i32 %43, i32* %5, align 4
  %44 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %45 = load i32, i32* @DSIM_MVPORCH_REG, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %44, i32 %45, i32 %46)
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %49 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %52 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = call i32 @DSIM_MAIN_HFP(i64 %54)
  %56 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %57 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  %63 = call i32 @DSIM_MAIN_HBP(i64 %62)
  %64 = or i32 %55, %63
  store i32 %64, i32* %5, align 4
  %65 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %66 = load i32, i32* @DSIM_MHPORCH_REG, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %65, i32 %66, i32 %67)
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 5
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 4
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = call i32 @DSIM_MAIN_VSA(i64 %75)
  %77 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %78 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %79, %82
  %84 = call i32 @DSIM_MAIN_HSA(i64 %83)
  %85 = or i32 %76, %84
  store i32 %85, i32* %5, align 4
  %86 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %87 = load i32, i32* @DSIM_MSYNC_REG, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %86, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %24, %1
  %91 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %92 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @DSIM_MAIN_HRESOL(i64 %93, i32 %94)
  %96 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %97 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @DSIM_MAIN_VRESOL(i64 %98, i32 %99)
  %101 = or i32 %95, %100
  store i32 %101, i32* %5, align 4
  %102 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %103 = load i32, i32* @DSIM_MDRESOL_REG, align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @exynos_dsi_write(%struct.exynos_dsi* %102, i32 %103, i32 %104)
  %106 = load %struct.exynos_dsi*, %struct.exynos_dsi** %2, align 8
  %107 = getelementptr inbounds %struct.exynos_dsi, %struct.exynos_dsi* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %110 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %113 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %114)
  ret void
}

declare dso_local i32 @DSIM_CMD_ALLOW(i32) #1

declare dso_local i32 @DSIM_STABLE_VFP(i64) #1

declare dso_local i32 @DSIM_MAIN_VBP(i64) #1

declare dso_local i32 @exynos_dsi_write(%struct.exynos_dsi*, i32, i32) #1

declare dso_local i32 @DSIM_MAIN_HFP(i64) #1

declare dso_local i32 @DSIM_MAIN_HBP(i64) #1

declare dso_local i32 @DSIM_MAIN_VSA(i64) #1

declare dso_local i32 @DSIM_MAIN_HSA(i64) #1

declare dso_local i32 @DSIM_MAIN_HRESOL(i64, i32) #1

declare dso_local i32 @DSIM_MAIN_VRESOL(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
