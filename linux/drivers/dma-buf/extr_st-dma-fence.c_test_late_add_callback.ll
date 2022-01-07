; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_late_add_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_st-dma-fence.c_test_late_add_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.simple_cb = type { i64, i32 }
%struct.dma_fence = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Added callback, but fence was already signaled!\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Callback called after failed attachment !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_late_add_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_late_add_callback(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.simple_cb, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.simple_cb* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = load i32, i32* @EINVAL, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = call %struct.dma_fence* (...) @mock_fence()
  store %struct.dma_fence* %10, %struct.dma_fence** %5, align 8
  %11 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %12 = icmp ne %struct.dma_fence* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %39

16:                                               ; preds = %1
  %17 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %18 = call i32 @dma_fence_signal(%struct.dma_fence* %17)
  %19 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %20 = getelementptr inbounds %struct.simple_cb, %struct.simple_cb* %4, i32 0, i32 1
  %21 = load i32, i32* @simple_callback, align 4
  %22 = call i32 @dma_fence_add_callback(%struct.dma_fence* %19, i32* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %16
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %28 = call i32 @dma_fence_signal(%struct.dma_fence* %27)
  %29 = getelementptr inbounds %struct.simple_cb, %struct.simple_cb* %4, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %32, %24
  %36 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %37 = call i32 @dma_fence_put(%struct.dma_fence* %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dma_fence* @mock_fence(...) #2

declare dso_local i32 @dma_fence_signal(%struct.dma_fence*) #2

declare dso_local i32 @dma_fence_add_callback(%struct.dma_fence*, i32*, i32) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
