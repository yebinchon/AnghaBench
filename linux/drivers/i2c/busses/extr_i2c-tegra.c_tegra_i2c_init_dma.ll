; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_init_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_dev = type { i32, i32, i32*, i32, %struct.dma_chan*, %struct.dma_chan*, %struct.TYPE_2__* }
%struct.dma_chan = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CONFIG_TEGRA20_APB_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Support for APB DMA not enabled!\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"failed to allocate the DMA buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"cannot use DMA: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"falling back to PIO\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_dev*)* @tegra_i2c_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_init_dma(%struct.tegra_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_dev*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_i2c_dev* %0, %struct.tegra_i2c_dev** %3, align 8
  %8 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %8, i32 0, i32 6
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

15:                                               ; preds = %1
  %16 = load i32, i32* @CONFIG_TEGRA20_APB_DMA, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

24:                                               ; preds = %15
  %25 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.dma_chan* @dma_request_slave_channel_reason(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_chan* %28, %struct.dma_chan** %4, align 8
  %29 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %30 = call i64 @IS_ERR(%struct.dma_chan* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %34 = call i32 @PTR_ERR(%struct.dma_chan* %33)
  store i32 %34, i32* %7, align 4
  br label %79

35:                                               ; preds = %24
  %36 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %37 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %37, i32 0, i32 5
  store %struct.dma_chan* %36, %struct.dma_chan** %38, align 8
  %39 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.dma_chan* @dma_request_slave_channel_reason(i32 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_chan* %42, %struct.dma_chan** %4, align 8
  %43 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %44 = call i64 @IS_ERR(%struct.dma_chan* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %48 = call i32 @PTR_ERR(%struct.dma_chan* %47)
  store i32 %48, i32* %7, align 4
  br label %79

49:                                               ; preds = %35
  %50 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %51 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %51, i32 0, i32 4
  store %struct.dma_chan* %50, %struct.dma_chan** %52, align 8
  %53 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %57 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* @__GFP_NOWARN, align 4
  %61 = or i32 %59, %60
  %62 = call i32* @dma_alloc_coherent(i32 %55, i32 %58, i32* %6, i32 %61)
  store i32* %62, i32** %5, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %72, label %65

65:                                               ; preds = %49
  %66 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @dev_err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %7, align 4
  br label %79

72:                                               ; preds = %49
  %73 = load i32*, i32** %5, align 8
  %74 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %78 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  store i32 0, i32* %2, align 4
  br label %98

79:                                               ; preds = %65, %46, %32
  %80 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %81 = call i32 @tegra_i2c_release_dma(%struct.tegra_i2c_dev* %80)
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %79
  %87 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (i32, i8*, ...) @dev_err(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  %92 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %98

96:                                               ; preds = %79
  %97 = load i32, i32* %7, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %86, %72, %19, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @tegra_i2c_release_dma(%struct.tegra_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
