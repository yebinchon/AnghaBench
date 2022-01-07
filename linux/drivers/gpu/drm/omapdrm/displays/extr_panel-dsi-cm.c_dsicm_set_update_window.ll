; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_set_update_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/displays/extr_panel-dsi-cm.c_dsicm_set_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32)* }

@MIPI_DCS_SET_COLUMN_ADDRESS = common dso_local global i32 0, align 4
@MIPI_DCS_SET_PAGE_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*, i32, i32, i32, i32)* @dsicm_set_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_set_update_window(%struct.panel_drv_data* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.panel_drv_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.omap_dss_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [5 x i32], align 16
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 1
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %20, align 8
  store %struct.omap_dss_device* %21, %struct.omap_dss_device** %12, align 8
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* @MIPI_DCS_SET_COLUMN_ADDRESS, align 4
  %33 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %14, align 4
  %35 = ashr i32 %34, 8
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %14, align 4
  %39 = ashr i32 %38, 0
  %40 = and i32 %39, 255
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 2
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %15, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* %15, align 4
  %47 = ashr i32 %46, 0
  %48 = and i32 %47, 255
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 4
  store i32 %48, i32* %49, align 16
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %51 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32 (%struct.omap_dss_device*, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32, i32*, i32)** %54, align 8
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  %61 = call i32 %55(%struct.omap_dss_device* %56, i32 %59, i32* %60, i32 20)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %5
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %6, align 4
  br label %114

66:                                               ; preds = %5
  %67 = load i32, i32* @MIPI_DCS_SET_PAGE_ADDRESS, align 4
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  store i32 %67, i32* %68, align 16
  %69 = load i32, i32* %16, align 4
  %70 = ashr i32 %69, 8
  %71 = and i32 %70, 255
  %72 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 1
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = ashr i32 %73, 0
  %75 = and i32 %74, 255
  %76 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 2
  store i32 %75, i32* %76, align 8
  %77 = load i32, i32* %17, align 4
  %78 = ashr i32 %77, 8
  %79 = and i32 %78, 255
  %80 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 3
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %17, align 4
  %82 = ashr i32 %81, 0
  %83 = and i32 %82, 255
  %84 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 4
  store i32 %83, i32* %84, align 16
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %86 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32 (%struct.omap_dss_device*, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32, i32*, i32)** %89, align 8
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %92 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %93 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  %96 = call i32 %90(%struct.omap_dss_device* %91, i32 %94, i32* %95, i32 20)
  store i32 %96, i32* %13, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %66
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %6, align 4
  br label %114

101:                                              ; preds = %66
  %102 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %103 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %106, align 8
  %108 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %109 = load %struct.panel_drv_data*, %struct.panel_drv_data** %7, align 8
  %110 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 %107(%struct.omap_dss_device* %108, i32 %111)
  %113 = load i32, i32* %13, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %101, %99, %64
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
