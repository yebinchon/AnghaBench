; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Wait reported complete before being signaled\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Wait reported incomplete after being signaled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_wait(i8* %0) #0 {
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
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = call i32 @dma_fence_wait_timeout(%struct.dma_fence* %15, i32 0, i32 0)
  %17 = load i32, i32* @ETIME, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %31

22:                                               ; preds = %14
  %23 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %24 = call i32 @dma_fence_signal(%struct.dma_fence* %23)
  %25 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %26 = call i32 @dma_fence_wait_timeout(%struct.dma_fence* %25, i32 0, i32 0)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %30, %28, %20
  %32 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %33 = call i32 @dma_fence_signal(%struct.dma_fence* %32)
  %34 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %35 = call i32 @dma_fence_put(%struct.dma_fence* %34)
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %31, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.dma_fence* @mock_fence(...) #1

declare dso_local i32 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
