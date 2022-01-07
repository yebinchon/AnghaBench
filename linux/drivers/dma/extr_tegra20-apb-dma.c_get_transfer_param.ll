; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_get_transfer_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_get_transfer_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i32 }

@TEGRA_APBDMA_CSR_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DMA direction is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dma_channel*, i32, i64*, i64*, i64*, i32*, i32*)* @get_transfer_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_transfer_param(%struct.tegra_dma_channel* %0, i32 %1, i64* %2, i64* %3, i64* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra_dma_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %66 [
    i32 128, label %17
    i32 129, label %42
  ]

17:                                               ; preds = %7
  %18 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %19 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %11, align 8
  store i64 %21, i64* %22, align 8
  %23 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %24 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %25 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @get_bus_width(%struct.tegra_dma_channel* %23, i32 %27)
  %29 = load i64*, i64** %12, align 8
  store i64 %28, i64* %29, align 8
  %30 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %31 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %14, align 8
  store i32 %33, i32* %34, align 4
  %35 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %36 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %15, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* @TEGRA_APBDMA_CSR_DIR, align 8
  %41 = load i64*, i64** %13, align 8
  store i64 %40, i64* %41, align 8
  store i32 0, i32* %8, align 4
  br label %72

42:                                               ; preds = %7
  %43 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %44 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64*, i64** %11, align 8
  store i64 %46, i64* %47, align 8
  %48 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %49 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %50 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @get_bus_width(%struct.tegra_dma_channel* %48, i32 %52)
  %54 = load i64*, i64** %12, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %56 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %14, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %61 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i64*, i64** %13, align 8
  store i64 0, i64* %65, align 8
  store i32 0, i32* %8, align 4
  br label %72

66:                                               ; preds = %7
  %67 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %9, align 8
  %68 = call i32 @tdc2dev(%struct.tegra_dma_channel* %67)
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %66, %42, %17
  %73 = load i32, i32* %8, align 4
  ret i32 %73
}

declare dso_local i64 @get_bus_width(%struct.tegra_dma_channel*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
