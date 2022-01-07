; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dsi.c_mipi_dsi_device_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipi_dsi_device = type { i32, i32, %struct.mipi_dsi_host* }
%struct.mipi_dsi_host = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipi_dsi_device*)* @mipi_dsi_device_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipi_dsi_device_add(%struct.mipi_dsi_device* %0) #0 {
  %2 = alloca %struct.mipi_dsi_device*, align 8
  %3 = alloca %struct.mipi_dsi_host*, align 8
  store %struct.mipi_dsi_device* %0, %struct.mipi_dsi_device** %2, align 8
  %4 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %5 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %4, i32 0, i32 2
  %6 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %5, align 8
  store %struct.mipi_dsi_host* %6, %struct.mipi_dsi_host** %3, align 8
  %7 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %7, i32 0, i32 0
  %9 = load %struct.mipi_dsi_host*, %struct.mipi_dsi_host** %3, align 8
  %10 = getelementptr inbounds %struct.mipi_dsi_host, %struct.mipi_dsi_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @dev_name(i32 %11)
  %13 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %14 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_set_name(i32* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.mipi_dsi_device*, %struct.mipi_dsi_device** %2, align 8
  %18 = getelementptr inbounds %struct.mipi_dsi_device, %struct.mipi_dsi_device* %17, i32 0, i32 0
  %19 = call i32 @device_add(i32* %18)
  ret i32 %19
}

declare dso_local i32 @dev_set_name(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @device_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
