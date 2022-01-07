; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.omap_connector = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.omap_dss_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, %struct.drm_connector*)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@OMAP_DSS_DEVICE_OP_EDID = common dso_local global i32 0, align 4
@OMAP_DSS_DEVICE_OP_MODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @omap_connector_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_connector_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.omap_connector*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.omap_connector* @to_omap_connector(%struct.drm_connector* %6)
  store %struct.omap_connector* %7, %struct.omap_connector** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %13 = load i32, i32* @OMAP_DSS_DEVICE_OP_EDID, align 4
  %14 = call %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector* %12, i32 %13)
  store %struct.omap_dss_device* %14, %struct.omap_dss_device** %5, align 8
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %16 = icmp ne %struct.omap_dss_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %20 = call i32 @omap_connector_get_modes_edid(%struct.drm_connector* %18, %struct.omap_dss_device* %19)
  store i32 %20, i32* %2, align 4
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %23 = load i32, i32* @OMAP_DSS_DEVICE_OP_MODES, align 4
  %24 = call %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector* %22, i32 %23)
  store %struct.omap_dss_device* %24, %struct.omap_dss_device** %5, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %26 = icmp ne %struct.omap_dss_device* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.omap_dss_device*, %struct.drm_connector*)*, i32 (%struct.omap_dss_device*, %struct.drm_connector*)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %34 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %35 = call i32 %32(%struct.omap_dss_device* %33, %struct.drm_connector* %34)
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %21
  %37 = load %struct.omap_connector*, %struct.omap_connector** %4, align 8
  %38 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.omap_connector*, %struct.omap_connector** %4, align 8
  %45 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @drm_panel_get_modes(i64 %48)
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %43, %27, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.omap_connector* @to_omap_connector(%struct.drm_connector*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector*, i32) #1

declare dso_local i32 @omap_connector_get_modes_edid(%struct.drm_connector*, %struct.omap_dss_device*) #1

declare dso_local i32 @drm_panel_get_modes(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
