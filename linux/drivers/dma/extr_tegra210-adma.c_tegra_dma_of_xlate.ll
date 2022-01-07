; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_dma_of_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_dma_of_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.of_phandle_args = type { i32, i32* }
%struct.of_dma = type { %struct.tegra_adma* }
%struct.tegra_adma = type { i32, i32 }
%struct.tegra_adma_chan = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"DMA request must not be 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.of_phandle_args*, %struct.of_dma*)* @tegra_dma_of_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @tegra_dma_of_xlate(%struct.of_phandle_args* %0, %struct.of_dma* %1) #0 {
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca %struct.of_dma*, align 8
  %6 = alloca %struct.tegra_adma*, align 8
  %7 = alloca %struct.tegra_adma_chan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i32, align 4
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store %struct.of_dma* %1, %struct.of_dma** %5, align 8
  %10 = load %struct.of_dma*, %struct.of_dma** %5, align 8
  %11 = getelementptr inbounds %struct.of_dma, %struct.of_dma* %10, i32 0, i32 0
  %12 = load %struct.tegra_adma*, %struct.tegra_adma** %11, align 8
  store %struct.tegra_adma* %12, %struct.tegra_adma** %6, align 8
  %13 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %14 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %20 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %28 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %45

31:                                               ; preds = %18
  %32 = load %struct.tegra_adma*, %struct.tegra_adma** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_adma, %struct.tegra_adma* %32, i32 0, i32 0
  %34 = call %struct.dma_chan* @dma_get_any_slave_channel(i32* %33)
  store %struct.dma_chan* %34, %struct.dma_chan** %8, align 8
  %35 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %36 = icmp ne %struct.dma_chan* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store %struct.dma_chan* null, %struct.dma_chan** %3, align 8
  br label %45

38:                                               ; preds = %31
  %39 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %40 = call %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan* %39)
  store %struct.tegra_adma_chan* %40, %struct.tegra_adma_chan** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %7, align 8
  %43 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %44, %struct.dma_chan** %3, align 8
  br label %45

45:                                               ; preds = %38, %37, %26, %17
  %46 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  ret %struct.dma_chan* %46
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_chan* @dma_get_any_slave_channel(i32*) #1

declare dso_local %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
