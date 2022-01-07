; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_2__*, %struct.omap_dss_device* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)* }
%struct.drm_display_mode = type { i32 }

@MODE_BAD = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_connector_mode_fixup(%struct.omap_dss_device* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %11 = call i32 @drm_mode_copy(%struct.drm_display_mode* %9, %struct.drm_display_mode* %10)
  br label %12

12:                                               ; preds = %37, %3
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %14 = icmp ne %struct.omap_dss_device* %13, null
  br i1 %14, label %15, label %41

15:                                               ; preds = %12
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %17 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)*, i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)** %19, align 8
  %21 = icmp ne i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %37

23:                                               ; preds = %15
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)*, i32 (%struct.omap_dss_device*, %struct.drm_display_mode*)** %27, align 8
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %31 = call i32 %28(%struct.omap_dss_device* %29, %struct.drm_display_mode* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @MODE_BAD, align 4
  store i32 %35, i32* %4, align 4
  br label %43

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 1
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %39, align 8
  store %struct.omap_dss_device* %40, %struct.omap_dss_device** %5, align 8
  br label %12

41:                                               ; preds = %12
  %42 = load i32, i32* @MODE_OK, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %34
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @drm_mode_copy(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
