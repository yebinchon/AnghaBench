; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_request_dma_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-sh_mobile.c_sh_mobile_i2c_request_dma_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.device = type { i32 }
%struct.dma_slave_config = type { i32, i8*, i8*, i8*, i8* }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"request_channel failed for %s (%ld)\0A\00", align 1
@DMA_SLAVE_BUSWIDTH_1_BYTE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"slave_config failed for %s (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"got DMA channel for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_chan* (%struct.device*, i32, i8*)* @sh_mobile_i2c_request_dma_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_chan* @sh_mobile_i2c_request_dma_chan(%struct.device* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dma_slave_config, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %14 = icmp eq i32 %12, %13
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  store i8* %16, i8** %10, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = call %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device* %17, i8* %18)
  store %struct.dma_chan* %19, %struct.dma_chan** %8, align 8
  %20 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %21 = call i64 @IS_ERR(%struct.dma_chan* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.device*, %struct.device** %5, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = call i32 @PTR_ERR(%struct.dma_chan* %26)
  %28 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %25, i32 %27)
  %29 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %29, %struct.dma_chan** %4, align 8
  br label %66

30:                                               ; preds = %3
  %31 = call i32 @memset(%struct.dma_slave_config* %9, i32 0, i32 40)
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %41 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  br label %47

42:                                               ; preds = %30
  %43 = load i8*, i8** %7, align 8
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 2
  store i8* %43, i8** %44, align 8
  %45 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_1_BYTE, align 8
  %46 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %9, i32 0, i32 1
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %49 = call i32 @dmaengine_slave_config(%struct.dma_chan* %48, %struct.dma_slave_config* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %55)
  %57 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %58 = call i32 @dma_release_channel(%struct.dma_chan* %57)
  %59 = load i32, i32* %11, align 4
  %60 = call %struct.dma_chan* @ERR_PTR(i32 %59)
  store %struct.dma_chan* %60, %struct.dma_chan** %4, align 8
  br label %66

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = call i32 (%struct.device*, i8*, i8*, ...) @dev_dbg(%struct.device* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %63)
  %65 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %65, %struct.dma_chan** %4, align 8
  br label %66

66:                                               ; preds = %61, %52, %23
  %67 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  ret %struct.dma_chan* %67
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @memset(%struct.dma_slave_config*, i32, i32) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local %struct.dma_chan* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
