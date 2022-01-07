; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_dss.c_dss_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dss_device = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@dss_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dss_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dss_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dss_device* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dss_device* %5, %struct.dss_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @of_platform_depopulate(i32* %7)
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @component_master_del(i32* %10, i32* @dss_component_ops)
  %12 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %13 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dss_debugfs_remove_file(i32 %15)
  %17 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %18 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dss_debugfs_remove_file(i32 %20)
  %22 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %23 = call i32 @dss_uninitialize_debugfs(%struct.dss_device* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_disable(i32* %25)
  %27 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %28 = call i32 @dss_uninit_ports(%struct.dss_device* %27)
  %29 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %30 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %1
  %34 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %35 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dss_video_pll_uninit(i64 %36)
  br label %38

38:                                               ; preds = %33, %1
  %39 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %40 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %45 = getelementptr inbounds %struct.dss_device, %struct.dss_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @dss_video_pll_uninit(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %50 = call i32 @dss_put_clocks(%struct.dss_device* %49)
  %51 = load %struct.dss_device*, %struct.dss_device** %3, align 8
  %52 = call i32 @kfree(%struct.dss_device* %51)
  ret i32 0
}

declare dso_local %struct.dss_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_platform_depopulate(i32*) #1

declare dso_local i32 @component_master_del(i32*, i32*) #1

declare dso_local i32 @dss_debugfs_remove_file(i32) #1

declare dso_local i32 @dss_uninitialize_debugfs(%struct.dss_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @dss_uninit_ports(%struct.dss_device*) #1

declare dso_local i32 @dss_video_pll_uninit(i64) #1

declare dso_local i32 @dss_put_clocks(%struct.dss_device*) #1

declare dso_local i32 @kfree(%struct.dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
