; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_set_slave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-mipi-dsi.c_dw_mipi_dsi_set_slave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mipi_dsi = type { i32, %struct.dw_mipi_dsi*, i32, i32, i32, %struct.dw_mipi_dsi* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dw_mipi_dsi_set_slave(%struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi* %1) #0 {
  %3 = alloca %struct.dw_mipi_dsi*, align 8
  %4 = alloca %struct.dw_mipi_dsi*, align 8
  store %struct.dw_mipi_dsi* %0, %struct.dw_mipi_dsi** %3, align 8
  store %struct.dw_mipi_dsi* %1, %struct.dw_mipi_dsi** %4, align 8
  %5 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %4, align 8
  %6 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %7 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %6, i32 0, i32 1
  store %struct.dw_mipi_dsi* %5, %struct.dw_mipi_dsi** %7, align 8
  %8 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %9 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %10 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %9, i32 0, i32 1
  %11 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %10, align 8
  %12 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %11, i32 0, i32 5
  store %struct.dw_mipi_dsi* %8, %struct.dw_mipi_dsi** %12, align 8
  %13 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %17 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %16, i32 0, i32 1
  %18 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %17, align 8
  %19 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %18, i32 0, i32 4
  store i32 %15, i32* %19, align 8
  %20 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %24 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %23, i32 0, i32 1
  %25 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %24, align 8
  %26 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %25, i32 0, i32 3
  store i32 %22, i32* %26, align 4
  %27 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %28 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %31 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %30, i32 0, i32 1
  %32 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %31, align 8
  %33 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %32, i32 0, i32 2
  store i32 %29, i32* %33, align 8
  %34 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %35 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %3, align 8
  %38 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %37, i32 0, i32 1
  %39 = load %struct.dw_mipi_dsi*, %struct.dw_mipi_dsi** %38, align 8
  %40 = getelementptr inbounds %struct.dw_mipi_dsi, %struct.dw_mipi_dsi* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
