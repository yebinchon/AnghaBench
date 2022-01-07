; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_conv_and_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_conv_and_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.hp206c_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Device not ready: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed convert: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Failed read: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32, i32, i32)* @hp206c_conv_and_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp206c_conv_and_read(%struct.iio_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hp206c_data*, align 8
  %12 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.hp206c_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.hp206c_data* %14, %struct.hp206c_data** %11, align 8
  %15 = load %struct.hp206c_data*, %struct.hp206c_data** %11, align 8
  %16 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %15, i32 0, i32 0
  %17 = load %struct.i2c_client*, %struct.i2c_client** %16, align 8
  store %struct.i2c_client* %17, %struct.i2c_client** %12, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = call i32 @hp206c_wait_dev_rdy(%struct.iio_dev* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %24 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %5, align 4
  br label %69

28:                                               ; preds = %4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %36 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %69

40:                                               ; preds = %28
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul i32 %42, 3
  %44 = udiv i32 %43, 2
  %45 = call i32 @usleep_range(i32 %41, i32 %44)
  %46 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %47 = call i32 @hp206c_wait_dev_rdy(%struct.iio_dev* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %52 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @dev_err(i32* %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %69

56:                                               ; preds = %40
  %57 = load %struct.i2c_client*, %struct.i2c_client** %12, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @hp206c_read_20bit(%struct.i2c_client* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %56
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %67, %50, %34, %22
  %70 = load i32, i32* %5, align 4
  ret i32 %70
}

declare dso_local %struct.hp206c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @hp206c_wait_dev_rdy(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hp206c_read_20bit(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
