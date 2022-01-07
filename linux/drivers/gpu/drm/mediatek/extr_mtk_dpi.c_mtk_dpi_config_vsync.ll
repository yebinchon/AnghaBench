; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_vsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_dpi.c_mtk_dpi_config_vsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_dpi = type { i32 }
%struct.mtk_dpi_sync_param = type { i32, i32, i32, i32 }

@VSYNC_WIDTH_SHIFT = common dso_local global i32 0, align 4
@VSYNC_WIDTH_MASK = common dso_local global i32 0, align 4
@VSYNC_HALF_LINE_SHIFT = common dso_local global i32 0, align 4
@VSYNC_HALF_LINE_MASK = common dso_local global i32 0, align 4
@VSYNC_BACK_PORCH_SHIFT = common dso_local global i32 0, align 4
@VSYNC_BACK_PORCH_MASK = common dso_local global i32 0, align 4
@VSYNC_FRONT_PORCH_SHIFT = common dso_local global i32 0, align 4
@VSYNC_FRONT_PORCH_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_dpi*, %struct.mtk_dpi_sync_param*, i32, i32)* @mtk_dpi_config_vsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_dpi_config_vsync(%struct.mtk_dpi* %0, %struct.mtk_dpi_sync_param* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mtk_dpi*, align 8
  %6 = alloca %struct.mtk_dpi_sync_param*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mtk_dpi* %0, %struct.mtk_dpi** %5, align 8
  store %struct.mtk_dpi_sync_param* %1, %struct.mtk_dpi_sync_param** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = load %struct.mtk_dpi_sync_param*, %struct.mtk_dpi_sync_param** %6, align 8
  %12 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VSYNC_WIDTH_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* @VSYNC_WIDTH_MASK, align 4
  %17 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %9, i32 %10, i32 %15, i32 %16)
  %18 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.mtk_dpi_sync_param*, %struct.mtk_dpi_sync_param** %6, align 8
  %21 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VSYNC_HALF_LINE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = load i32, i32* @VSYNC_HALF_LINE_MASK, align 4
  %26 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %18, i32 %19, i32 %24, i32 %25)
  %27 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.mtk_dpi_sync_param*, %struct.mtk_dpi_sync_param** %6, align 8
  %30 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VSYNC_BACK_PORCH_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @VSYNC_BACK_PORCH_MASK, align 4
  %35 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %27, i32 %28, i32 %33, i32 %34)
  %36 = load %struct.mtk_dpi*, %struct.mtk_dpi** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mtk_dpi_sync_param*, %struct.mtk_dpi_sync_param** %6, align 8
  %39 = getelementptr inbounds %struct.mtk_dpi_sync_param, %struct.mtk_dpi_sync_param* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @VSYNC_FRONT_PORCH_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = load i32, i32* @VSYNC_FRONT_PORCH_MASK, align 4
  %44 = call i32 @mtk_dpi_mask(%struct.mtk_dpi* %36, i32 %37, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @mtk_dpi_mask(%struct.mtk_dpi*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
