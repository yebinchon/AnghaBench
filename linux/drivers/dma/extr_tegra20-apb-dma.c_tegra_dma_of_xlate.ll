; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32* }
%struct.of_dma = type { %struct.tegra_dma* }
%struct.tegra_dma = type { i32, i32 }
%struct.tegra_dma_channel = type { i32 }

@TEGRA_APBDMA_CSR_REQ_SEL_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Invalid slave id: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @tegra_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @tegra_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.tegra_dma*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.tegra_dma_channel*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %9 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %10 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %9, i32 0, i32 0
  %11 = load %struct.tegra_dma*, %struct.tegra_dma** %10, align 8
  store %struct.tegra_dma* %11, %struct.tegra_dma** %6, align 8
  %12 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %13 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TEGRA_APBDMA_CSR_REQ_SEL_MASK, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.tegra_dma*, %struct.tegra_dma** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %24 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %47

29:                                               ; preds = %2
  %30 = load %struct.tegra_dma*, %struct.tegra_dma** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %30, i32 0, i32 0
  %32 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %31)
  store %struct.dma_chan* %32, %struct.dma_chan** %7, align 8
  %33 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %34 = icmp ne %struct.dma_chan* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %47

36:                                               ; preds = %29
  %37 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %38 = call %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan* %37)
  store %struct.tegra_dma_channel* %38, %struct.tegra_dma_channel** %8, align 8
  %39 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %40 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %8, align 8
  %45 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  store %struct.dma_chan* %46, %struct.dma_chan** %3, align 8
  br label %47

47:                                               ; preds = %36, %35, %19
  %48 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %48
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
