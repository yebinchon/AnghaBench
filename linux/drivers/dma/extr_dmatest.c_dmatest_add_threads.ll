; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_add_threads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_add_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { %struct.dmatest_params }
%struct.dmatest_params = type { i32 }
%struct.dmatest_chan = type { i32, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.dmatest_thread = type { i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.dma_chan*, %struct.dmatest_info* }
%struct.TYPE_2__ = type { i32* }

@DMA_MEMCPY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@DMA_MEMSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@DMA_XOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@DMA_PQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"pq\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"No memory for %s-%s%u\0A\00", align 1
@dmatest_func = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s-%s%u\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Failed to create thread %s-%s%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmatest_info*, %struct.dmatest_chan*, i32)* @dmatest_add_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_add_threads(%struct.dmatest_info* %0, %struct.dmatest_chan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmatest_info*, align 8
  %6 = alloca %struct.dmatest_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dmatest_params*, align 8
  %9 = alloca %struct.dmatest_thread*, align 8
  %10 = alloca %struct.dma_chan*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.dmatest_info* %0, %struct.dmatest_info** %5, align 8
  store %struct.dmatest_chan* %1, %struct.dmatest_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %14 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %13, i32 0, i32 0
  store %struct.dmatest_params* %14, %struct.dmatest_params** %8, align 8
  %15 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %16 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %15, i32 0, i32 1
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @DMA_MEMCPY, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  br label %43

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @DMA_MEMSET, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  br label %42

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @DMA_XOR, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %41

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DMA_PQ, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8** %11, align 8
  br label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %121

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41, %26
  br label %43

43:                                               ; preds = %42, %21
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %116, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.dmatest_params*, %struct.dmatest_params** %8, align 8
  %47 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %119

50:                                               ; preds = %44
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.dmatest_thread* @kzalloc(i32 48, i32 %51)
  store %struct.dmatest_thread* %52, %struct.dmatest_thread** %9, align 8
  %53 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %54 = icmp ne %struct.dmatest_thread* %53, null
  br i1 %54, label %61, label %55

55:                                               ; preds = %50
  %56 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %57 = call i32 @dma_chan_name(%struct.dma_chan* %56)
  %58 = load i8*, i8** %11, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %57, i8* %58, i32 %59)
  br label %119

61:                                               ; preds = %50
  %62 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %63 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %64 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %63, i32 0, i32 7
  store %struct.dmatest_info* %62, %struct.dmatest_info** %64, align 8
  %65 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %66 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %65, i32 0, i32 1
  %67 = load %struct.dma_chan*, %struct.dma_chan** %66, align 8
  %68 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %69 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %68, i32 0, i32 6
  store %struct.dma_chan* %67, %struct.dma_chan** %69, align 8
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %72 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %74 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %73, i32 0, i32 4
  %75 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %76 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32* %74, i32** %77, align 8
  %78 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %79 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %78, i32 0, i32 4
  %80 = call i32 @init_waitqueue_head(i32* %79)
  %81 = call i32 (...) @smp_wmb()
  %82 = load i32, i32* @dmatest_func, align 4
  %83 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %84 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %85 = call i32 @dma_chan_name(%struct.dma_chan* %84)
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @kthread_create(i32 %82, %struct.dmatest_thread* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %85, i8* %86, i32 %87)
  %89 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %90 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %92 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_ERR(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %61
  %97 = load %struct.dma_chan*, %struct.dma_chan** %10, align 8
  %98 = call i32 @dma_chan_name(%struct.dma_chan* %97)
  %99 = load i8*, i8** %11, align 8
  %100 = load i32, i32* %12, align 4
  %101 = call i32 @pr_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %98, i8* %99, i32 %100)
  %102 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %103 = call i32 @kfree(%struct.dmatest_thread* %102)
  br label %119

104:                                              ; preds = %61
  %105 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %106 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @get_task_struct(i32 %107)
  %109 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %110 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %109, i32 0, i32 2
  %111 = load %struct.dmatest_chan*, %struct.dmatest_chan** %6, align 8
  %112 = getelementptr inbounds %struct.dmatest_chan, %struct.dmatest_chan* %111, i32 0, i32 0
  %113 = call i32 @list_add_tail(i32* %110, i32* %112)
  %114 = load %struct.dmatest_thread*, %struct.dmatest_thread** %9, align 8
  %115 = getelementptr inbounds %struct.dmatest_thread, %struct.dmatest_thread* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  br label %116

116:                                              ; preds = %104
  %117 = load i32, i32* %12, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %44

119:                                              ; preds = %96, %55, %44
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %119, %37
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.dmatest_thread* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i8*, i32) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @kthread_create(i32, %struct.dmatest_thread*, i8*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(%struct.dmatest_thread*) #1

declare dso_local i32 @get_task_struct(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
