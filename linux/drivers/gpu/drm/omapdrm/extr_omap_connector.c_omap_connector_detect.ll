; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.omap_dss_device*)* }

@OMAP_DSS_DEVICE_OP_DETECT = common dso_local global i32 0, align 4
@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@connector_status_unknown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s: %d (force=%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @omap_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = load i32, i32* @OMAP_DSS_DEVICE_OP_DETECT, align 4
  %9 = call %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector* %7, i32 %8)
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %5, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %11 = icmp ne %struct.omap_dss_device* %10, null
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64 (%struct.omap_dss_device*)*, i64 (%struct.omap_dss_device*)** %16, align 8
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %19 = call i64 %17(%struct.omap_dss_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* @connector_status_connected, align 4
  br label %25

23:                                               ; preds = %12
  %24 = load i32, i32* @connector_status_disconnected, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @omap_connector_hpd_notify(%struct.drm_connector* %27, i32 %28)
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %32 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %36 [
    i32 130, label %34
    i32 128, label %34
    i32 129, label %34
  ]

34:                                               ; preds = %30, %30, %30
  %35 = load i32, i32* @connector_status_connected, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @connector_status_unknown, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %25
  %40 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %41 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @VERB(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.omap_dss_device* @omap_connector_find_device(%struct.drm_connector*, i32) #1

declare dso_local i32 @omap_connector_hpd_notify(%struct.drm_connector*, i32) #1

declare dso_local i32 @VERB(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
