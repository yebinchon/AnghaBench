; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_read_axis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/magnetometer/extr_ak8975.c_ak8975_read_axis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.ak8975_data = type { i32, %struct.i2c_client*, %struct.ak_def* }
%struct.i2c_client = type { i32 }
%struct.ak_def = type { i32, i32* }

@s16 = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error in reading axis\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32*)* @ak8975_read_axis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ak8975_read_axis(%struct.iio_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ak8975_data*, align 8
  %9 = alloca %struct.i2c_client*, align 8
  %10 = alloca %struct.ak_def*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.ak8975_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.ak8975_data* %15, %struct.ak8975_data** %8, align 8
  %16 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %17 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %16, i32 0, i32 1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %9, align 8
  %19 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %20 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %19, i32 0, i32 2
  %21 = load %struct.ak_def*, %struct.ak_def** %20, align 8
  store %struct.ak_def* %21, %struct.ak_def** %10, align 8
  %22 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %23 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %22, i32 0, i32 1
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_get_sync(i32* %25)
  %27 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %28 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %27, i32 0, i32 0
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %31 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %32 = call i32 @ak8975_start_read_axis(%struct.ak8975_data* %30, %struct.i2c_client* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %3
  br label %77

36:                                               ; preds = %3
  %37 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %38 = load %struct.ak_def*, %struct.ak_def** %10, align 8
  %39 = getelementptr inbounds %struct.ak_def, %struct.ak_def* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client* %37, i32 %44, i32 4, i32* %11)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %36
  br label %77

49:                                               ; preds = %36
  %50 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %51 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %54 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %53, i32 0, i32 1
  %55 = load %struct.i2c_client*, %struct.i2c_client** %54, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 @pm_runtime_mark_last_busy(i32* %56)
  %58 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %59 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %58, i32 0, i32 1
  %60 = load %struct.i2c_client*, %struct.i2c_client** %59, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 @pm_runtime_put_autosuspend(i32* %61)
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @le16_to_cpu(i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* @s16, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load %struct.ak_def*, %struct.ak_def** %10, align 8
  %68 = getelementptr inbounds %struct.ak_def, %struct.ak_def* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 0, %69
  %71 = load %struct.ak_def*, %struct.ak_def** %10, align 8
  %72 = getelementptr inbounds %struct.ak_def, %struct.ak_def* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clamp_t(i32 %65, i32 %66, i32 %70, i32 %73)
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %76, i32* %4, align 4
  br label %85

77:                                               ; preds = %48, %35
  %78 = load %struct.ak8975_data*, %struct.ak8975_data** %8, align 8
  %79 = getelementptr inbounds %struct.ak8975_data, %struct.ak8975_data* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 0
  %83 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %49
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ak8975_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ak8975_start_read_axis(%struct.ak8975_data*, %struct.i2c_client*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data_or_emulated(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @clamp_t(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
