; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_get_modes_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_get_modes_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.omap_dss_device*, i8*, i32)* }
%struct.omap_connector = type { i32 }

@connector_status_connected = common dso_local global i32 0, align 4
@MAX_EDID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.omap_dss_device*)* @omap_connector_get_modes_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_connector_get_modes_edid(%struct.drm_connector* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.omap_connector*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %11 = call %struct.omap_connector* @to_omap_connector(%struct.drm_connector* %10)
  store %struct.omap_connector* %11, %struct.omap_connector** %6, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %13 = call i32 @omap_connector_detect(%struct.drm_connector* %12, i32 0)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @connector_status_connected, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %57

18:                                               ; preds = %2
  %19 = load i32, i32* @MAX_EDID, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i8* @kzalloc(i32 %19, i32 %20)
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  br label %57

25:                                               ; preds = %18
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64 (%struct.omap_dss_device*, i8*, i32)*, i64 (%struct.omap_dss_device*, i8*, i32)** %29, align 8
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* @MAX_EDID, align 4
  %34 = call i64 %30(%struct.omap_dss_device* %31, i8* %32, i32 %33)
  %35 = icmp sle i64 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = call i32 @drm_edid_is_valid(i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36, %25
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @kfree(i8* %41)
  br label %57

43:                                               ; preds = %36
  %44 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %44, i8* %45)
  %47 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @drm_add_edid_modes(%struct.drm_connector* %47, i8* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 @drm_detect_hdmi_monitor(i8* %50)
  %52 = load %struct.omap_connector*, %struct.omap_connector** %6, align 8
  %53 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 @kfree(i8* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %60

57:                                               ; preds = %40, %24, %17
  %58 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %59 = call i32 @drm_connector_update_edid_property(%struct.drm_connector* %58, i8* null)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %43
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.omap_connector* @to_omap_connector(%struct.drm_connector*) #1

declare dso_local i32 @omap_connector_detect(%struct.drm_connector*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @drm_edid_is_valid(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @drm_connector_update_edid_property(%struct.drm_connector*, i8*) #1

declare dso_local i32 @drm_add_edid_modes(%struct.drm_connector*, i8*) #1

declare dso_local i32 @drm_detect_hdmi_monitor(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
