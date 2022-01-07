; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_run_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_run_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { i32 }
%struct.kernel_param = type { i32 }

@test_info = common dso_local global %struct.dmatest_info zeroinitializer, align 4
@dmatest_run = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Could not start test, no channels configured\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @dmatest_run_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_run_set(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca %struct.dmatest_info*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  store %struct.dmatest_info* @test_info, %struct.dmatest_info** %6, align 8
  %8 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %9 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.kernel_param*, %struct.kernel_param** %5, align 8
  %13 = call i32 @param_set_bool(i8* %11, %struct.kernel_param* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %18 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %43

21:                                               ; preds = %2
  %22 = load i64, i64* @dmatest_run, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %26 = call i64 @is_threaded_test_pending(%struct.dmatest_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %30 = call i32 @start_threaded_tests(%struct.dmatest_info* %29)
  br label %33

31:                                               ; preds = %24
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %28
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %36 = call i32 @stop_threaded_test(%struct.dmatest_info* %35)
  br label %37

37:                                               ; preds = %34, %33
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.dmatest_info*, %struct.dmatest_info** %6, align 8
  %40 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %38, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @param_set_bool(i8*, %struct.kernel_param*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @is_threaded_test_pending(%struct.dmatest_info*) #1

declare dso_local i32 @start_threaded_tests(%struct.dmatest_info*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @stop_threaded_test(%struct.dmatest_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
