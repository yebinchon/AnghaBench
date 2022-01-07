; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dc.c_tegra_dc_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@DC_DISP_DISP_TIMING_OPTIONS = common dso_local global i32 0, align 4
@DC_DISP_REF_TO_SYNC = common dso_local global i32 0, align 4
@DC_DISP_SYNC_WIDTH = common dso_local global i32 0, align 4
@DC_DISP_BACK_PORCH = common dso_local global i32 0, align 4
@DC_DISP_FRONT_PORCH = common dso_local global i32 0, align 4
@DC_DISP_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dc*, %struct.drm_display_mode*)* @tegra_dc_set_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dc_set_timings(%struct.tegra_dc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.tegra_dc*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tegra_dc* %0, %struct.tegra_dc** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  store i32 1, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %8 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_dc, %struct.tegra_dc* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %16 = load i32, i32* @DC_DISP_DISP_TIMING_OPTIONS, align 4
  %17 = call i32 @tegra_dc_writel(%struct.tegra_dc* %15, i64 0, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %18, 16
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %19, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %7, align 8
  %23 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* @DC_DISP_REF_TO_SYNC, align 4
  %26 = call i32 @tegra_dc_writel(%struct.tegra_dc* %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %29 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sub nsw i32 %30, %33
  %35 = shl i32 %34, 16
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %38, %41
  %43 = shl i32 %42, 0
  %44 = or i32 %35, %43
  %45 = sext i32 %44 to i64
  store i64 %45, i64* %7, align 8
  %46 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i32, i32* @DC_DISP_SYNC_WIDTH, align 4
  %49 = call i32 @tegra_dc_writel(%struct.tegra_dc* %46, i64 %47, i32 %48)
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = shl i32 %56, 16
  %58 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %59 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %62 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = shl i32 %64, 0
  %66 = or i32 %57, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %7, align 8
  %68 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* @DC_DISP_BACK_PORCH, align 4
  %71 = call i32 @tegra_dc_writel(%struct.tegra_dc* %68, i64 %69, i32 %70)
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %73 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %76 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  %79 = shl i32 %78, 16
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %84 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = sub nsw i32 %82, %85
  %87 = shl i32 %86, 0
  %88 = or i32 %79, %87
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %7, align 8
  %90 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %91 = load i64, i64* %7, align 8
  %92 = load i32, i32* @DC_DISP_FRONT_PORCH, align 4
  %93 = call i32 @tegra_dc_writel(%struct.tegra_dc* %90, i64 %91, i32 %92)
  %94 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %95 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 16
  %98 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %99 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %98, i32 0, i32 7
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %7, align 8
  %103 = load %struct.tegra_dc*, %struct.tegra_dc** %3, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i32, i32* @DC_DISP_ACTIVE, align 4
  %106 = call i32 @tegra_dc_writel(%struct.tegra_dc* %103, i64 %104, i32 %105)
  ret i32 0
}

declare dso_local i32 @tegra_dc_writel(%struct.tegra_dc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
