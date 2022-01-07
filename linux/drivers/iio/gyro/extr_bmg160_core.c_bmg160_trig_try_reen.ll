; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_trig_try_reen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_bmg160_core.c_bmg160_trig_try_reen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.bmg160_data = type { i32, i64 }
%struct.device = type { i32 }

@BMG160_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMG160_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error writing reg_rst_latch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*)* @bmg160_trig_try_reen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmg160_trig_try_reen(%struct.iio_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.bmg160_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.iio_dev* %9, %struct.iio_dev** %4, align 8
  %10 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %11 = call %struct.bmg160_data* @iio_priv(%struct.iio_dev* %10)
  store %struct.bmg160_data* %11, %struct.bmg160_data** %5, align 8
  %12 = load %struct.bmg160_data*, %struct.bmg160_data** %5, align 8
  %13 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.device* @regmap_get_device(i32 %14)
  store %struct.device* %15, %struct.device** %6, align 8
  %16 = load %struct.bmg160_data*, %struct.bmg160_data** %5, align 8
  %17 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.bmg160_data*, %struct.bmg160_data** %5, align 8
  %23 = getelementptr inbounds %struct.bmg160_data, %struct.bmg160_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BMG160_REG_INT_RST_LATCH, align 4
  %26 = load i32, i32* @BMG160_INT_MODE_LATCH_INT, align 4
  %27 = load i32, i32* @BMG160_INT_MODE_LATCH_RESET, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @regmap_write(i32 %24, i32 %25, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 @dev_err(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %32, %20
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.bmg160_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
