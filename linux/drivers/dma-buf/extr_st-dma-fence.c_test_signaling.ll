; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_signaling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_signaling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Fence unexpectedly signaled on creation\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Fence reported being already signaled\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Fence not reporting signaled\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Fence reported not being already signaled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_signaling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_signaling(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.dma_fence*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = call %struct.dma_fence* (...) @mock_fence()
  store %struct.dma_fence* %8, %struct.dma_fence** %4, align 8
  %9 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %10 = icmp ne %struct.dma_fence* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %39

20:                                               ; preds = %14
  %21 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %22 = call i64 @dma_fence_signal(%struct.dma_fence* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %39

26:                                               ; preds = %20
  %27 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %28 = call i64 @dma_fence_is_signaled(%struct.dma_fence* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %39

32:                                               ; preds = %26
  %33 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %34 = call i64 @dma_fence_signal(%struct.dma_fence* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  %37 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %39

38:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %36, %30, %24, %18
  %40 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %41 = call i32 @dma_fence_put(%struct.dma_fence* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %39, %11
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.dma_fence* @mock_fence(...) #1

declare dso_local i64 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
