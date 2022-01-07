; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_data_rdy_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8312.c_stk8312_data_rdy_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.stk8312_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STK8312_DREADY_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set trigger state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @stk8312_data_rdy_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8312_data_rdy_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_trigger*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.stk8312_data*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_trigger*, %struct.iio_trigger** %4, align 8
  %10 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %6, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %12 = call %struct.stk8312_data* @iio_priv(%struct.iio_dev* %11)
  store %struct.stk8312_data* %12, %struct.stk8312_data** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.stk8312_data*, %struct.stk8312_data** %7, align 8
  %17 = load i32, i32* @STK8312_DREADY_BIT, align 4
  %18 = call i32 @stk8312_set_interrupts(%struct.stk8312_data* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %22

19:                                               ; preds = %2
  %20 = load %struct.stk8312_data*, %struct.stk8312_data** %7, align 8
  %21 = call i32 @stk8312_set_interrupts(%struct.stk8312_data* %20, i32 0)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.stk8312_data*, %struct.stk8312_data** %7, align 8
  %27 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.stk8312_data*, %struct.stk8312_data** %7, align 8
  %35 = getelementptr inbounds %struct.stk8312_data, %struct.stk8312_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.stk8312_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @stk8312_set_interrupts(%struct.stk8312_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
