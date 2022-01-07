; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.omap_connector = type { %struct.omap_dss_device*, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @omap_connector_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_connector_destroy(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.omap_connector*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %5 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %6 = call %struct.omap_connector* @to_omap_connector(%struct.drm_connector* %5)
  store %struct.omap_connector* %6, %struct.omap_connector** %3, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.omap_connector*, %struct.omap_connector** %3, align 8
  %12 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %11, i32 0, i32 1
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %14 = icmp ne %struct.omap_dss_device* %13, null
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.omap_connector*, %struct.omap_connector** %3, align 8
  %17 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %16, i32 0, i32 1
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  store %struct.omap_dss_device* %18, %struct.omap_dss_device** %4, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %22, align 8
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %25 = call i32 %23(%struct.omap_dss_device* %24)
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %27 = call i32 @omapdss_device_put(%struct.omap_dss_device* %26)
  %28 = load %struct.omap_connector*, %struct.omap_connector** %3, align 8
  %29 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %28, i32 0, i32 1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %29, align 8
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %32 = call i32 @drm_connector_unregister(%struct.drm_connector* %31)
  %33 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %34 = call i32 @drm_connector_cleanup(%struct.drm_connector* %33)
  %35 = load %struct.omap_connector*, %struct.omap_connector** %3, align 8
  %36 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %35, i32 0, i32 0
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %36, align 8
  %38 = call i32 @omapdss_device_put(%struct.omap_dss_device* %37)
  %39 = load %struct.omap_connector*, %struct.omap_connector** %3, align 8
  %40 = call i32 @kfree(%struct.omap_connector* %39)
  ret void
}

declare dso_local %struct.omap_connector* @to_omap_connector(%struct.drm_connector*) #1

declare dso_local i32 @DBG(i8*, i32) #1

declare dso_local i32 @omapdss_device_put(%struct.omap_dss_device*) #1

declare dso_local i32 @drm_connector_unregister(%struct.drm_connector*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @kfree(%struct.omap_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
