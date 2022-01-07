; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_stub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Obtained unsignaled stub fence!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_stub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stub(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [64 x %struct.dma_fence*], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %27, %1
  %9 = load i32, i32* %5, align 4
  %10 = getelementptr inbounds [64 x %struct.dma_fence*], [64 x %struct.dma_fence*]* %3, i64 0, i64 0
  %11 = call i32 @ARRAY_SIZE(%struct.dma_fence** %10)
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %30

13:                                               ; preds = %8
  %14 = call %struct.dma_fence* (...) @dma_fence_get_stub()
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [64 x %struct.dma_fence*], [64 x %struct.dma_fence*]* %3, i64 0, i64 %16
  store %struct.dma_fence* %14, %struct.dma_fence** %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [64 x %struct.dma_fence*], [64 x %struct.dma_fence*]* %3, i64 0, i64 %19
  %21 = load %struct.dma_fence*, %struct.dma_fence** %20, align 8
  %22 = call i32 @dma_fence_is_signaled(%struct.dma_fence* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %31

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %8

30:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %24
  br label %32

32:                                               ; preds = %36, %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %5, align 4
  %35 = icmp ne i32 %33, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x %struct.dma_fence*], [64 x %struct.dma_fence*]* %3, i64 0, i64 %38
  %40 = load %struct.dma_fence*, %struct.dma_fence** %39, align 8
  %41 = call i32 @dma_fence_put(%struct.dma_fence* %40)
  br label %32

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @ARRAY_SIZE(%struct.dma_fence**) #1

declare dso_local %struct.dma_fence* @dma_fence_get_stub(...) #1

declare dso_local i32 @dma_fence_is_signaled(%struct.dma_fence*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
