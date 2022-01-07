; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_slave_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_slave_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i64, i64 }
%struct.tegra_dma_channel = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Configuration not allowed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@TEGRA_APBDMA_SLAVE_ID_INVALID = common dso_local global i64 0, align 8
@TEGRA_APBDMA_CSR_REQ_SEL_MASK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @tegra_dma_slave_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_dma_slave_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.tegra_dma_channel*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %8 = call %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan* %7)
  store %struct.tegra_dma_channel* %8, %struct.tegra_dma_channel** %6, align 8
  %9 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %10 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %9, i32 0, i32 3
  %11 = call i32 @list_empty(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %15 = call i32 @tdc2dev(%struct.tegra_dma_channel* %14)
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EBUSY, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %21 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %20, i32 0, i32 2
  %22 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %23 = call i32 @memcpy(i32* %21, %struct.dma_slave_config* %22, i32 16)
  %24 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %25 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @TEGRA_APBDMA_SLAVE_ID_INVALID, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %19
  %30 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %31 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %36 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TEGRA_APBDMA_CSR_REQ_SEL_MASK, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %34
  %44 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %45 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %43, %29, %19
  %50 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %40, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.tegra_dma_channel* @to_tegra_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tdc2dev(%struct.tegra_dma_channel*) #1

declare dso_local i32 @memcpy(i32*, %struct.dma_slave_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
