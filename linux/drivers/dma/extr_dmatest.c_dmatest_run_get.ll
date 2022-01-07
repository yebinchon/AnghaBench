; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_run_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_run_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { i32 }
%struct.kernel_param = type { i32 }

@test_info = common dso_local global %struct.dmatest_info zeroinitializer, align 4
@dmatest_run = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @dmatest_run_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_run_get(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca %struct.dmatest_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  store %struct.dmatest_info* @test_info, %struct.dmatest_info** %5, align 8
  %6 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %7 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %10 = call i64 @is_threaded_test_run(%struct.dmatest_info* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* @dmatest_run, align 4
  br label %21

13:                                               ; preds = %2
  %14 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %15 = call i32 @is_threaded_test_pending(%struct.dmatest_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %19 = call i32 @stop_threaded_test(%struct.dmatest_info* %18)
  br label %20

20:                                               ; preds = %17, %13
  store i32 0, i32* @dmatest_run, align 4
  br label %21

21:                                               ; preds = %20, %12
  %22 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %23 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %27 = call i32 @param_get_bool(i8* %25, %struct.kernel_param* %26)
  ret i32 %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @is_threaded_test_run(%struct.dmatest_info*) #1

declare dso_local i32 @is_threaded_test_pending(%struct.dmatest_info*) #1

declare dso_local i32 @stop_threaded_test(%struct.dmatest_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @param_get_bool(i8*, %struct.kernel_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
