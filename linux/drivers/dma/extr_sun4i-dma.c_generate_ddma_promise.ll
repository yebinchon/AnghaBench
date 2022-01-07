; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_generate_ddma_promise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_generate_ddma_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_dma_promise = type { i64, i32, i8*, i8* }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@SUN4I_DMA_CFG_LOADING = common dso_local global i32 0, align 4
@SUN4I_DDMA_CFG_BYTE_COUNT_MODE_REMAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sun4i_dma_promise* (%struct.dma_chan*, i8*, i8*, i64, %struct.dma_slave_config*)* @generate_ddma_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sun4i_dma_promise* @generate_ddma_promise(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, %struct.dma_slave_config* %4) #0 {
  %6 = alloca %struct.sun4i_dma_promise*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dma_slave_config*, align 8
  %12 = alloca %struct.sun4i_dma_promise*, align 8
  %13 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.dma_slave_config* %4, %struct.dma_slave_config** %11, align 8
  %14 = load i32, i32* @GFP_NOWAIT, align 4
  %15 = call %struct.sun4i_dma_promise* @kzalloc(i32 32, i32 %14)
  store %struct.sun4i_dma_promise* %15, %struct.sun4i_dma_promise** %12, align 8
  %16 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %17 = icmp ne %struct.sun4i_dma_promise* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store %struct.sun4i_dma_promise* null, %struct.sun4i_dma_promise** %6, align 8
  br label %94

19:                                               ; preds = %5
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %22 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %25 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %28 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @SUN4I_DMA_CFG_LOADING, align 4
  %30 = load i32, i32* @SUN4I_DDMA_CFG_BYTE_COUNT_MODE_REMAIN, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %33 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %35 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @convert_burst(i32 %36)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %19
  br label %91

41:                                               ; preds = %19
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @SUN4I_DMA_CFG_SRC_BURST_LENGTH(i32 %42)
  %44 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %45 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @convert_burst(i32 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %91

55:                                               ; preds = %41
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @SUN4I_DMA_CFG_DST_BURST_LENGTH(i32 %56)
  %58 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %59 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %63 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @convert_buswidth(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %13, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  br label %91

69:                                               ; preds = %55
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @SUN4I_DMA_CFG_SRC_DATA_WIDTH(i32 %70)
  %72 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %73 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.dma_slave_config*, %struct.dma_slave_config** %11, align 8
  %77 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @convert_buswidth(i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %69
  br label %91

83:                                               ; preds = %69
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @SUN4I_DMA_CFG_DST_DATA_WIDTH(i32 %84)
  %86 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %87 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  store %struct.sun4i_dma_promise* %90, %struct.sun4i_dma_promise** %6, align 8
  br label %94

91:                                               ; preds = %82, %68, %54, %40
  %92 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %12, align 8
  %93 = call i32 @kfree(%struct.sun4i_dma_promise* %92)
  store %struct.sun4i_dma_promise* null, %struct.sun4i_dma_promise** %6, align 8
  br label %94

94:                                               ; preds = %91, %83, %18
  %95 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %6, align 8
  ret %struct.sun4i_dma_promise* %95
}

declare dso_local %struct.sun4i_dma_promise* @kzalloc(i32, i32) #1

declare dso_local i32 @convert_burst(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_SRC_BURST_LENGTH(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_DST_BURST_LENGTH(i32) #1

declare dso_local i32 @convert_buswidth(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_SRC_DATA_WIDTH(i32) #1

declare dso_local i32 @SUN4I_DMA_CFG_DST_DATA_WIDTH(i32) #1

declare dso_local i32 @kfree(%struct.sun4i_dma_promise*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
