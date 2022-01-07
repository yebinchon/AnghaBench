; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_transfer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-sdma.c_sdma_transfer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_desc = type { i32, %struct.sdma_channel*, i64, i64, i64, i64 }
%struct.sdma_channel = type { i32, i64, i32 }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdma_desc* (%struct.sdma_channel*, i32, i32)* @sdma_transfer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdma_desc* @sdma_transfer_init(%struct.sdma_channel* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sdma_desc*, align 8
  %5 = alloca %struct.sdma_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sdma_desc*, align 8
  store %struct.sdma_channel* %0, %struct.sdma_channel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_NOWAIT, align 4
  %10 = call %struct.sdma_desc* @kzalloc(i32 48, i32 %9)
  store %struct.sdma_desc* %10, %struct.sdma_desc** %8, align 8
  %11 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %12 = icmp ne %struct.sdma_desc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %58

14:                                               ; preds = %3
  %15 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %16 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %17 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %20 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %22 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %24 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %26 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %28 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %27, i32 0, i32 3
  store i64 0, i64* %28, align 8
  %29 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %30 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %29, i32 0, i32 2
  store i64 0, i64* %30, align 8
  %31 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %32 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %33 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %32, i32 0, i32 1
  store %struct.sdma_channel* %31, %struct.sdma_channel** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %36 = getelementptr inbounds %struct.sdma_desc, %struct.sdma_desc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %38 = call i64 @sdma_alloc_bd(%struct.sdma_desc* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %14
  br label %55

41:                                               ; preds = %14
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %47 = call i32 @sdma_config_ownership(%struct.sdma_channel* %46, i32 0, i32 1, i32 0)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load %struct.sdma_channel*, %struct.sdma_channel** %5, align 8
  %50 = call i64 @sdma_load_context(%struct.sdma_channel* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %55

53:                                               ; preds = %48
  %54 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  store %struct.sdma_desc* %54, %struct.sdma_desc** %4, align 8
  br label %59

55:                                               ; preds = %52, %40
  %56 = load %struct.sdma_desc*, %struct.sdma_desc** %8, align 8
  %57 = call i32 @kfree(%struct.sdma_desc* %56)
  br label %58

58:                                               ; preds = %55, %13
  store %struct.sdma_desc* null, %struct.sdma_desc** %4, align 8
  br label %59

59:                                               ; preds = %58, %53
  %60 = load %struct.sdma_desc*, %struct.sdma_desc** %4, align 8
  ret %struct.sdma_desc* %60
}

declare dso_local %struct.sdma_desc* @kzalloc(i32, i32) #1

declare dso_local i64 @sdma_alloc_bd(%struct.sdma_desc*) #1

declare dso_local i32 @sdma_config_ownership(%struct.sdma_channel*, i32, i32, i32) #1

declare dso_local i64 @sdma_load_context(%struct.sdma_channel*) #1

declare dso_local i32 @kfree(%struct.sdma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
