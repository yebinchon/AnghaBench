; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-loop.c_iio_loop_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/trigger/extr_iio-trig-loop.c_iio_loop_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32, i32 }
%struct.iio_loop_info = type { i32 }

@iio_loop_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to create trigger loop thread\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @iio_loop_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_loop_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_loop_info*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %8 = call %struct.iio_loop_info* @iio_trigger_get_drvdata(%struct.iio_trigger* %7)
  store %struct.iio_loop_info* %8, %struct.iio_loop_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @iio_loop_thread, align 4
  %13 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %14 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %15 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kthread_run(i32 %12, %struct.iio_trigger* %13, i32 %16)
  %18 = load %struct.iio_loop_info*, %struct.iio_loop_info** %6, align 8
  %19 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.iio_loop_info*, %struct.iio_loop_info** %6, align 8
  %21 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @IS_ERR(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %27 = getelementptr inbounds %struct.iio_trigger, %struct.iio_trigger* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.iio_loop_info*, %struct.iio_loop_info** %6, align 8
  %30 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @PTR_ERR(i32 %31)
  store i32 %32, i32* %3, align 4
  br label %40

33:                                               ; preds = %11
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.iio_loop_info*, %struct.iio_loop_info** %6, align 8
  %36 = getelementptr inbounds %struct.iio_loop_info, %struct.iio_loop_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kthread_stop(i32 %37)
  br label %39

39:                                               ; preds = %34, %33
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.iio_loop_info* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local i32 @kthread_run(i32, %struct.iio_trigger*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @kthread_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
