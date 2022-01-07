; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_hpd_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_connector.c_omap_connector_hpd_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.omap_connector = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__*, %struct.omap_dss_device* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)* }

@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*, i32)* @omap_connector_hpd_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_connector_hpd_notify(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_connector*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %8 = call %struct.omap_connector* @to_omap_connector(%struct.drm_connector* %7)
  store %struct.omap_connector* %8, %struct.omap_connector** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @connector_status_disconnected, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %47

13:                                               ; preds = %2
  %14 = load %struct.omap_connector*, %struct.omap_connector** %5, align 8
  %15 = getelementptr inbounds %struct.omap_connector, %struct.omap_connector* %14, i32 0, i32 0
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %15, align 8
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %6, align 8
  br label %17

17:                                               ; preds = %43, %13
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %19 = icmp ne %struct.omap_dss_device* %18, null
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %30, align 8
  %32 = icmp ne i32 (%struct.omap_dss_device*)* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %25
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %38, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %41 = call i32 %39(%struct.omap_dss_device* %40)
  br label %42

42:                                               ; preds = %33, %25, %20
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 1
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %45, align 8
  store %struct.omap_dss_device* %46, %struct.omap_dss_device** %6, align 8
  br label %17

47:                                               ; preds = %12, %17
  ret void
}

declare dso_local %struct.omap_connector* @to_omap_connector(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
