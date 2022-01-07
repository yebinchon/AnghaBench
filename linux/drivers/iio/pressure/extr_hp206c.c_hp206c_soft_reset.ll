; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_hp206c.c_hp206c_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.hp206c_data = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@HP206C_CMD_SOFT_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to reset device: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Device not ready after soft reset: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to enable compensation: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @hp206c_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp206c_soft_reset(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hp206c_data*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.hp206c_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.hp206c_data* %8, %struct.hp206c_data** %5, align 8
  %9 = load %struct.hp206c_data*, %struct.hp206c_data** %5, align 8
  %10 = getelementptr inbounds %struct.hp206c_data, %struct.hp206c_data* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = load i32, i32* @HP206C_CMD_SOFT_RST, align 4
  %14 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = call i32 @usleep_range(i32 400, i32 600)
  %25 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %26 = call i32 @hp206c_wait_dev_rdy(%struct.iio_dev* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %23
  %36 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %37 = call i32 @hp206c_set_compensation(%struct.i2c_client* %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %29, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.hp206c_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hp206c_wait_dev_rdy(%struct.iio_dev*) #1

declare dso_local i32 @hp206c_set_compensation(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
