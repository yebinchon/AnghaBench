; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_mode_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_hdmi.c_mtk_hdmi_bridge_mode_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_hdmi = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"cur info: name:%s, hdisplay:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"hsync_start:%d,hsync_end:%d, htotal:%d\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hskew:%d, vdisplay:%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"vsync_start:%d, vsync_end:%d, vtotal:%d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"vscan:%d, flag:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_bridge*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @mtk_hdmi_bridge_mode_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_hdmi_bridge_mode_set(%struct.drm_bridge* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca %struct.drm_bridge*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.mtk_hdmi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %6, align 8
  %8 = load %struct.drm_bridge*, %struct.drm_bridge** %4, align 8
  %9 = call %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge* %8)
  store %struct.mtk_hdmi* %9, %struct.mtk_hdmi** %7, align 8
  %10 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %11 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %17 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %21 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %24 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %27 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %28, i32 %31)
  %33 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %34 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %44 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %47 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %50 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 %51, i32 %54)
  %56 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %57 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %63 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.mtk_hdmi*, %struct.mtk_hdmi** %7, align 8
  %67 = getelementptr inbounds %struct.mtk_hdmi, %struct.mtk_hdmi* %66, i32 0, i32 0
  %68 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %69 = call i32 @drm_mode_copy(i32* %67, %struct.drm_display_mode* %68)
  ret void
}

declare dso_local %struct.mtk_hdmi* @hdmi_ctx_from_bridge(%struct.drm_bridge*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @drm_mode_copy(i32*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
