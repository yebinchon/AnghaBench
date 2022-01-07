; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun6i_mipi_dsi.c_sun6i_dsi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_host = type { i32 }
%struct.mipi_dsi_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sun6i_dsi = type { i32, %struct.mipi_dsi_device* }

@.str = private unnamed_addr constant [20 x i8] c"Attached device %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_host*, %struct.mipi_dsi_device*)* @sun6i_dsi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun6i_dsi_attach(%struct.mipi_dsi_host* %0, %struct.mipi_dsi_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mipi_dsi_host*, align 8
  %5 = alloca %struct.mipi_dsi_device*, align 8
  %6 = alloca %struct.sun6i_dsi*, align 8
  store %struct.mipi_dsi_host* %0, %struct.mipi_dsi_host** %4, align 8
  store %struct.mipi_dsi_device* %1, %struct.mipi_dsi_device** %5, align 8
  %7 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %8 = call %struct.sun6i_dsi* @host_to_sun6i_dsi(%struct.mipi_dsi_host* %7)
  store %struct.sun6i_dsi* %8, %struct.sun6i_dsi** %6, align 8
  %9 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %10 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %6, align 8
  %11 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %10, i32 0, i32 1
  store %struct.mipi_dsi_device* %9, %struct.mipi_dsi_device** %11, align 8
  %12 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %13 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @of_drm_find_panel(i32 %15)
  %17 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %6, align 8
  %18 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %6, align 8
  %20 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IS_ERR(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.sun6i_dsi*, %struct.sun6i_dsi** %6, align 8
  %26 = getelementptr inbounds %struct.sun6i_dsi, %struct.sun6i_dsi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @PTR_ERR(i32 %27)
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %4, align 8
  %31 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %5, align 8
  %34 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_info(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %29, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.sun6i_dsi* @host_to_sun6i_dsi(%struct.mipi_dsi_host*) #1

declare dso_local i32 @of_drm_find_panel(i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
