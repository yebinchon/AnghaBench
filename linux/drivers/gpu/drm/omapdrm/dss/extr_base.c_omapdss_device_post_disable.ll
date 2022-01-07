; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_post_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_base.c_omapdss_device_post_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.omap_dss_device*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }

@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapdss_device_post_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %3 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %4 = icmp ne %struct.omap_dss_device* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %10, align 8
  %12 = icmp ne i32 (%struct.omap_dss_device*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %17, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %20 = call i32 %18(%struct.omap_dss_device* %19)
  br label %21

21:                                               ; preds = %13, %6
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 1
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %23, align 8
  call void @omapdss_device_post_disable(%struct.omap_dss_device* %24)
  %25 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %27 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %21, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
