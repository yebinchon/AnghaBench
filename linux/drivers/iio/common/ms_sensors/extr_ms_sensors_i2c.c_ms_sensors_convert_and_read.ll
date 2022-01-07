; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_convert_and_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ms_sensors/extr_ms_sensors_i2c.c_ms_sensors_convert_and_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@MS_SENSORS_NO_READ_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"ADC raw value : %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to make sensor adc conversion\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ms_sensors_convert_and_read(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.i2c_client*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 0, i64* %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.i2c_client*
  store %struct.i2c_client* %16, %struct.i2c_client** %14, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %55

23:                                               ; preds = %5
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = add i32 %25, 1000
  %27 = call i32 @usleep_range(i32 %24, i32 %26)
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MS_SENSORS_NO_READ_CMD, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %33 = load i32, i32* %9, align 4
  %34 = bitcast i64* %13 to i32*
  %35 = call i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %32, i32 %33, i32 3, i32* %34)
  store i32 %35, i32* %12, align 4
  br label %40

36:                                               ; preds = %23
  %37 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %38 = bitcast i64* %13 to i32*
  %39 = call i32 @i2c_master_recv(%struct.i2c_client* %37, i32* %38, i32 3)
  store i32 %39, i32* %12, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %55

44:                                               ; preds = %40
  %45 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load i64, i64* %13, align 8
  %48 = call i32 @be32_to_cpu(i64 %47)
  %49 = ashr i32 %48, 8
  %50 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @be32_to_cpu(i64 %51)
  %53 = ashr i32 %52, 8
  %54 = load i32*, i32** %11, align 8
  store i32 %53, i32* %54, align 4
  store i32 0, i32* %6, align 4
  br label %60

55:                                               ; preds = %43, %22
  %56 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %44
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client*, i32, i32, i32*) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
