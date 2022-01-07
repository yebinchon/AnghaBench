; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_config_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32 }
%struct.sdma_channel = type { i32, i32, i32, i32, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_DEV_TO_DEV = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_LWML = common dso_local global i32 0, align 4
@SDMA_WATERMARK_LEVEL_HWML = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*, i32)* @sdma_config_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdma_config_write(%struct.dma_chan* %0, %struct.dma_slave_config* %1, i32 %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdma_channel*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan* %8)
  store %struct.sdma_channel* %9, %struct.sdma_channel** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %3
  %14 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %15 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %18 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %20 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %23 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %21, %24
  %26 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %27 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %29 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %32 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %91

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DMA_DEV_TO_DEV, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %42 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %47 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @SDMA_WATERMARK_LEVEL_LWML, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %54 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %56 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = load i32, i32* @SDMA_WATERMARK_LEVEL_HWML, align 4
  %60 = and i32 %58, %59
  %61 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %62 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %69 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %90

70:                                               ; preds = %33
  %71 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %72 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %75 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %77 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %80 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %78, %81
  %83 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %84 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %86 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %89 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %70, %37
  br label %91

91:                                               ; preds = %90, %13
  %92 = load i32, i32* %6, align 4
  %93 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %94 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %96 = call i32 @sdma_config_channel(%struct.dma_chan* %95)
  ret i32 %96
}

declare dso_local %struct.sdma_channel* @to_sdma_chan(%struct.dma_chan*) #1

declare dso_local i32 @sdma_config_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
