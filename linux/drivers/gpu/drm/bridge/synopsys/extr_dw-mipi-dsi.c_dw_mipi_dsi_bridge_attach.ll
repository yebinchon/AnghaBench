; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_bridge_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_bridge = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dw_mipi_dsi = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Parent encoder object not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_bridge*)* @dw_mipi_dsi_bridge_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mipi_dsi_bridge_attach(%struct.drm_bridge* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_bridge*, align 8
  %4 = alloca %struct.dw_mipi_dsi*, align 8
  store %struct.drm_bridge* %0, %struct.drm_bridge** %3, align 8
  %5 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %6 = call %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge* %5)
  store %struct.dw_mipi_dsi* %6, %struct.dw_mipi_dsi** %4, align 8
  %7 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %8 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %29

15:                                               ; preds = %1
  %16 = load i32, i32* @DRM_MODE_ENCODER_DSI, align 4
  %17 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %18 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %22 = getelementptr inbounds %struct.drm_bridge, %struct.drm_bridge* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %25 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.drm_bridge*, %struct.drm_bridge** %3, align 8
  %28 = call i32 @drm_bridge_attach(%struct.TYPE_2__* %23, i32 %26, %struct.drm_bridge* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %15, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.dw_mipi_dsi* @bridge_to_dsi(%struct.drm_bridge*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_bridge_attach(%struct.TYPE_2__*, i32, %struct.drm_bridge*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
