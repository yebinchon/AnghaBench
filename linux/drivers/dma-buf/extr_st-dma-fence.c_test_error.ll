; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Fence unexpectedly has error status before signal\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Fence not reporting error status, got %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_error(i8* %0) #0 {
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
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  %18 = call i32 @dma_fence_set_error(%struct.dma_fence* %15, i32 %17)
  %19 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %20 = call i32 @dma_fence_get_status(%struct.dma_fence* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %37

24:                                               ; preds = %14
  %25 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %26 = call i32 @dma_fence_signal(%struct.dma_fence* %25)
  %27 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %28 = call i32 @dma_fence_get_status(%struct.dma_fence* %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %34 = call i32 @dma_fence_get_status(%struct.dma_fence* %33)
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %37

36:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %36, %32, %22
  %38 = load %struct.dma_fence*, %struct.dma_fence** %4, align 8
  %39 = call i32 @dma_fence_put(%struct.dma_fence* %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %37, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.dma_fence* @mock_fence(...) #1

declare dso_local i32 @dma_fence_set_error(%struct.dma_fence*, i32) #1

declare dso_local i32 @dma_fence_get_status(%struct.dma_fence*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
