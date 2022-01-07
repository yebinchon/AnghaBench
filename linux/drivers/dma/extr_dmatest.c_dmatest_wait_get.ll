; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_wait_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_dmatest.c_dmatest_wait_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmatest_info = type { %struct.dmatest_params }
%struct.dmatest_params = type { i64 }
%struct.kernel_param = type { i32 }

@test_info = common dso_local global %struct.dmatest_info zeroinitializer, align 8
@thread_wait = common dso_local global i32 0, align 4
@wait = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @dmatest_wait_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmatest_wait_get(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.kernel_param*, align 8
  %5 = alloca %struct.dmatest_info*, align 8
  %6 = alloca %struct.dmatest_params*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %4, align 8
  store %struct.dmatest_info* @test_info, %struct.dmatest_info** %5, align 8
  %7 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %8 = getelementptr inbounds %struct.dmatest_info, %struct.dmatest_info* %7, i32 0, i32 0
  store %struct.dmatest_params* %8, %struct.dmatest_params** %6, align 8
  %9 = load %struct.dmatest_params*, %struct.dmatest_params** %6, align 8
  %10 = getelementptr inbounds %struct.dmatest_params, %struct.dmatest_params* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* @thread_wait, align 4
  %15 = load %struct.dmatest_info*, %struct.dmatest_info** %5, align 8
  %16 = call i32 @is_threaded_test_run(%struct.dmatest_info* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event(i32 %14, i32 %19)
  br label %21

21:                                               ; preds = %13, %2
  store i32 1, i32* @wait, align 4
  %22 = load i8*, i8** %3, align 8
  %23 = load %struct.kernel_param*, %struct.kernel_param** %4, align 8
  %24 = call i32 @param_get_bool(i8* %22, %struct.kernel_param* %23)
  ret i32 %24
}

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @is_threaded_test_run(%struct.dmatest_info*) #1

declare dso_local i32 @param_get_bool(i8*, %struct.kernel_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
