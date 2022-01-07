; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_data_rdy_trigger_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_data_rdy_trigger_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.stk8ba50_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@STK8BA50_REG_INTEN2 = common dso_local global i32 0, align 4
@STK8BA50_DREADY_INT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to set trigger state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @stk8ba50_data_rdy_trigger_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8ba50_data_rdy_trigger_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.stk8ba50_data*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %5, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %11 = call %struct.stk8ba50_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.stk8ba50_data* %11, %struct.stk8ba50_data** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %6, align 8
  %16 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @STK8BA50_REG_INTEN2, align 4
  %19 = load i32, i32* @STK8BA50_DREADY_INT_MASK, align 4
  %20 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %6, align 8
  %23 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* @STK8BA50_REG_INTEN2, align 4
  %26 = call i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__* %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %6, align 8
  %32 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %6, align 8
  %39 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %36, %30
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.stk8ba50_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
