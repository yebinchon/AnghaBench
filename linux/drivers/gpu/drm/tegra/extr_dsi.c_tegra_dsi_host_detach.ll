; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_dsi.c_tegra_dsi_host_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32 }
%struct.tegra_dsi = type { %struct.tegra_output }
%struct.tegra_output = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @tegra_dsi_host_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dsi_host_detach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca %struct.mipi_dsi_host*, align 8
  %4 = alloca %struct.mipi_dsi_device*, align 8
  %5 = alloca %struct.tegra_dsi*, align 8
  %6 = alloca %struct.tegra_output*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %3, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %4, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %8 = call %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host* %7)
  store %struct.tegra_dsi* %8, %struct.tegra_dsi** %5, align 8
  %9 = load %struct.tegra_dsi*, %struct.tegra_dsi** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_dsi, %struct.tegra_dsi* %9, i32 0, i32 0
  store %struct.tegra_output* %10, %struct.tegra_output** %6, align 8
  %11 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %12 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  br i1 %14, label %15, label %39

15:                                               ; preds = %2
  %16 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %4, align 8
  %17 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %16, i32 0, i32 0
  %18 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %19 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %17, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %15
  %25 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %26 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %25, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %26, align 8
  %27 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %24
  %33 = load %struct.tegra_output*, %struct.tegra_output** %6, align 8
  %34 = getelementptr inbounds %struct.tegra_output, %struct.tegra_output* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @drm_helper_hpd_irq_event(i64 %36)
  br label %38

38:                                               ; preds = %32, %24
  br label %39

39:                                               ; preds = %38, %15, %2
  ret i32 0
}

declare dso_local %struct.tegra_dsi* @host_to_tegra(%struct.mipi_dsi_host*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
