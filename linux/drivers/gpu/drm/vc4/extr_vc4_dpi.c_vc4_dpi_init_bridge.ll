; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dpi.c_vc4_dpi_init_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_dpi.c_vc4_dpi_init_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_dpi = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.drm_panel = type { i32 }
%struct.drm_bridge = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc4_dpi*)* @vc4_dpi_init_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc4_dpi_init_bridge(%struct.vc4_dpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc4_dpi*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.drm_panel*, align 8
  %6 = alloca %struct.drm_bridge*, align 8
  %7 = alloca i32, align 4
  store %struct.vc4_dpi* %0, %struct.vc4_dpi** %3, align 8
  %8 = load %struct.vc4_dpi*, %struct.vc4_dpi** %3, align 8
  %9 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @drm_of_find_panel_or_bridge(i32 %14, i32 0, i32 0, %struct.drm_panel** %5, %struct.drm_bridge** %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %39

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %1
  %27 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %28 = icmp ne %struct.drm_panel* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.drm_panel*, %struct.drm_panel** %5, align 8
  %31 = load i32, i32* @DRM_MODE_CONNECTOR_DPI, align 4
  %32 = call %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel* %30, i32 %31)
  store %struct.drm_bridge* %32, %struct.drm_bridge** %6, align 8
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.vc4_dpi*, %struct.vc4_dpi** %3, align 8
  %35 = getelementptr inbounds %struct.vc4_dpi, %struct.vc4_dpi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.drm_bridge*, %struct.drm_bridge** %6, align 8
  %38 = call i32 @drm_bridge_attach(i32 %36, %struct.drm_bridge* %37, i32* null)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %33, %24, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @drm_of_find_panel_or_bridge(i32, i32, i32, %struct.drm_panel**, %struct.drm_bridge**) #1

declare dso_local %struct.drm_bridge* @drm_panel_bridge_add(%struct.drm_panel*, i32) #1

declare dso_local i32 @drm_bridge_attach(i32, %struct.drm_bridge*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
