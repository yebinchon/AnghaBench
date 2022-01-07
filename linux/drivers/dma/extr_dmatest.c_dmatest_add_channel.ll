; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_add_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_add_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { i32, i32 }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { i32 }
%struct.dmatest_chan = type { i32, i32, %struct.dma_chan* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No memory for %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DMA_MEMCPY = common dso_local global i32 0, align 4
@dmatest = common dso_local global i32 0, align 4
@DMA_MEMSET = common dso_local global i32 0, align 4
@DMA_XOR = common dso_local global i32 0, align 4
@DMA_PQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Added %u threads using %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmatest_info*, %struct.dma_chan*)* @dmatest_add_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_add_channel(%struct.dmatest_info* %0, %struct.dma_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dmatest_info*, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca %struct.dmatest_chan*, align 8
  %7 = alloca %struct.dma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dmatest_info* %0, %struct.dmatest_info** %4, align 8
  store %struct.dma_chan* %1, %struct.dma_chan** %5, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load %struct.dma_device*, %struct.dma_device** %11, align 8
  store %struct.dma_device* %12, %struct.dma_device** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.dmatest_chan* @kmalloc(i32 16, i32 %13)
  store %struct.dmatest_chan* %14, %struct.dmatest_chan** %6, align 8
  %15 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %16 = icmp ne %struct.dmatest_chan* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %19 = call i32 @dma_chan_name(%struct.dma_chan* %18)
  %20 = call i32 @pr_warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %135

23:                                               ; preds = %2
  %24 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %25 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %26 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %25, i32 0, i32 2
  store %struct.dma_chan* %24, %struct.dma_chan** %26, align 8
  %27 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %28 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %27, i32 0, i32 1
  %29 = call i32 @INIT_LIST_HEAD(i32* %28)
  %30 = load i32, i32* @DMA_MEMCPY, align 4
  %31 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %32 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @dma_has_cap(i32 %30, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %23
  %37 = load i32, i32* @dmatest, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %41 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %42 = load i32, i32* @DMA_MEMCPY, align 4
  %43 = call i32 @dmatest_add_threads(%struct.dmatest_info* %40, %struct.dmatest_chan* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %9, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %49, %36
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* @DMA_MEMSET, align 4
  %56 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %57 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @dma_has_cap(i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %54
  %62 = load i32, i32* @dmatest, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %78

64:                                               ; preds = %61
  %65 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %66 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %67 = load i32, i32* @DMA_MEMSET, align 4
  %68 = call i32 @dmatest_add_threads(%struct.dmatest_info* %65, %struct.dmatest_chan* %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  br label %74

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, %75
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %61
  br label %79

79:                                               ; preds = %78, %54
  %80 = load i32, i32* @DMA_XOR, align 4
  %81 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %82 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @dma_has_cap(i32 %80, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %79
  %87 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %88 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %89 = load i32, i32* @DMA_XOR, align 4
  %90 = call i32 @dmatest_add_threads(%struct.dmatest_info* %87, %struct.dmatest_chan* %88, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = load i32, i32* %9, align 4
  br label %96

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = load i32, i32* %8, align 4
  %99 = add i32 %98, %97
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %96, %79
  %101 = load i32, i32* @DMA_PQ, align 4
  %102 = load %struct.dma_device*, %struct.dma_device** %7, align 8
  %103 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @dma_has_cap(i32 %101, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %121

107:                                              ; preds = %100
  %108 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %109 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %110 = load i32, i32* @DMA_PQ, align 4
  %111 = call i32 @dmatest_add_threads(%struct.dmatest_info* %108, %struct.dmatest_chan* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %9, align 4
  br label %117

116:                                              ; preds = %107
  br label %117

117:                                              ; preds = %116, %114
  %118 = phi i32 [ %115, %114 ], [ 0, %116 ]
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %117, %100
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %124 = call i32 @dma_chan_name(%struct.dma_chan* %123)
  %125 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %122, i32 %124)
  %126 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %127 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %126, i32 0, i32 0
  %128 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %129 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %128, i32 0, i32 1
  %130 = call i32 @list_add_tail(i32* %127, i32* %129)
  %131 = load %struct.dmatest_info*, %struct.dmatest_info** %4, align 8
  %132 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %121, %17
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local %struct.dmatest_chan* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i64 @dma_has_cap(i32, i32) #1

declare dso_local i32 @dmatest_add_threads(%struct.dmatest_info*, %struct.dmatest_chan*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
