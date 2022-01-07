; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_trig_try_reen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-core.c_bmc150_accel_trig_try_reen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.bmc150_accel_trigger = type { %struct.bmc150_accel_data* }
%struct.bmc150_accel_data = type { i32, i32, %struct.bmc150_accel_trigger* }
%struct.device = type { i32 }

@BMC150_ACCEL_TRIGGER_DATA_READY = common dso_local global i64 0, align 8
@BMC150_ACCEL_REG_INT_RST_LATCH = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_INT = common dso_local global i32 0, align 4
@BMC150_ACCEL_INT_MODE_LATCH_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error writing reg_int_rst_latch\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*)* @bmc150_accel_trig_try_reen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_trig_try_reen(%struct.iio_trigger* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca %struct.bmc150_accel_trigger*, align 8
  %5 = alloca %struct.bmc150_accel_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  %8 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %9 = call %struct.bmc150_accel_trigger* @iio_trigger_get_drvdata(%struct.iio_trigger* %8)
  store %struct.bmc150_accel_trigger* %9, %struct.bmc150_accel_trigger** %4, align 8
  %10 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %4, align 8
  %11 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %10, i32 0, i32 0
  %12 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %11, align 8
  store %struct.bmc150_accel_data* %12, %struct.bmc150_accel_data** %5, align 8
  %13 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %14 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.device* @regmap_get_device(i32 %15)
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %4, align 8
  %18 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %4, align 8
  %19 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %18, i32 0, i32 0
  %20 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %19, align 8
  %21 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %20, i32 0, i32 2
  %22 = load %struct.bmc150_accel_trigger*, %struct.bmc150_accel_trigger** %21, align 8
  %23 = load i64, i64* @BMC150_ACCEL_TRIGGER_DATA_READY, align 8
  %24 = getelementptr inbounds %struct.bmc150_accel_trigger, %struct.bmc150_accel_trigger* %22, i64 %23
  %25 = icmp eq %struct.bmc150_accel_trigger* %17, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %29 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %32 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BMC150_ACCEL_REG_INT_RST_LATCH, align 4
  %35 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_INT, align 4
  %36 = load i32, i32* @BMC150_ACCEL_INT_MODE_LATCH_RESET, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @regmap_write(i32 %33, i32 %34, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.bmc150_accel_data*, %struct.bmc150_accel_data** %5, align 8
  %40 = getelementptr inbounds %struct.bmc150_accel_data, %struct.bmc150_accel_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %27
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.bmc150_accel_trigger* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.device* @regmap_get_device(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
