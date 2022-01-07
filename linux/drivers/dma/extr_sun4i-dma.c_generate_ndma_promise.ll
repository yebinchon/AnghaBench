; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_generate_ndma_promise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_sun4i-dma.c_generate_ndma_promise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_dma_promise = type { i64, i32, i8*, i8* }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@SUN4I_DMA_CFG_LOADING = common dso_local global i32 0, align 4
@SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"src burst %d, dst burst %d, src buswidth %d, dst buswidth %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sun4i_dma_promise* (%struct.dma_chan*, i8*, i8*, i64, %struct.dma_slave_config*, i32)* @generate_ndma_promise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sun4i_dma_promise* @generate_ndma_promise(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, %struct.dma_slave_config* %4, i32 %5) #0 {
  %7 = alloca %struct.sun4i_dma_promise*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_slave_config*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sun4i_dma_promise*, align 8
  %15 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.dma_slave_config* %4, %struct.dma_slave_config** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %17 = load i32, i32* %13, align 4
  %18 = call i32 @sanitize_config(%struct.dma_slave_config* %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store %struct.sun4i_dma_promise* null, %struct.sun4i_dma_promise** %7, align 8
  br label %118

22:                                               ; preds = %6
  %23 = load i32, i32* @GFP_NOWAIT, align 4
  %24 = call %struct.sun4i_dma_promise* @kzalloc(i32 32, i32 %23)
  store %struct.sun4i_dma_promise* %24, %struct.sun4i_dma_promise** %14, align 8
  %25 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %26 = icmp ne %struct.sun4i_dma_promise* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store %struct.sun4i_dma_promise* null, %struct.sun4i_dma_promise** %7, align 8
  br label %118

28:                                               ; preds = %22
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %31 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %34 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i64, i64* %11, align 8
  %36 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %37 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load i32, i32* @SUN4I_DMA_CFG_LOADING, align 4
  %39 = load i32, i32* @SUN4I_NDMA_CFG_BYTE_COUNT_MODE_REMAIN, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %42 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %44 = call i32 @chan2dev(%struct.dma_chan* %43)
  %45 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %52 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %55 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %59 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @convert_burst(i32 %60)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %28
  br label %115

65:                                               ; preds = %28
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @SUN4I_DMA_CFG_SRC_BURST_LENGTH(i32 %66)
  %68 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %69 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %73 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @convert_burst(i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %65
  br label %115

79:                                               ; preds = %65
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @SUN4I_DMA_CFG_DST_BURST_LENGTH(i32 %80)
  %82 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %83 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %87 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @convert_buswidth(i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %115

93:                                               ; preds = %79
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @SUN4I_DMA_CFG_SRC_DATA_WIDTH(i32 %94)
  %96 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %97 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 8
  %100 = load %struct.dma_slave_config*, %struct.dma_slave_config** %12, align 8
  %101 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @convert_buswidth(i32 %102)
  store i32 %103, i32* %15, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %93
  br label %115

107:                                              ; preds = %93
  %108 = load i32, i32* %15, align 4
  %109 = call i32 @SUN4I_DMA_CFG_DST_DATA_WIDTH(i32 %108)
  %110 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %111 = getelementptr inbounds %struct.sun4i_dma_promise, %struct.sun4i_dma_promise* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  store %struct.sun4i_dma_promise* %114, %struct.sun4i_dma_promise** %7, align 8
  br label %118

115:                                              ; preds = %106, %92, %78, %64
  %116 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %14, align 8
  %117 = call i32 @kfree(%struct.sun4i_dma_promise* %116)
  store %struct.sun4i_dma_promise* null, %struct.sun4i_dma_promise** %7, align 8
  br label %118

118:                                              ; preds = %115, %107, %27, %21
  %119 = load %struct.sun4i_dma_promise*, %struct.sun4i_dma_promise** %7, align 8
  ret %struct.sun4i_dma_promise* %119
}

declare dso_local i32 @sanitize_config(%struct.dma_slave_config*, i32) #1

declare dso_local %struct.sun4i_dma_promise* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @chan2dev(%struct.dma_chan*) #1

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
