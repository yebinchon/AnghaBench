; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x-i2c.c_adxl34x_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_adxl34x-i2c.c_adxl34x_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.adxl34x = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@adxl34x_smbus_bops = common dso_local global i32 0, align 4
@adxl34x_i2c_bops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adxl34x_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adxl34x_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adxl34x*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %12 = call i32 @i2c_check_functionality(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %31 = call i32 @i2c_check_functionality(i32 %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32* @adxl34x_smbus_bops, i32* @adxl34x_i2c_bops
  %35 = call %struct.adxl34x* @adxl34x_probe(i32* %23, i32 %26, i32 0, i32* %34)
  store %struct.adxl34x* %35, %struct.adxl34x** %6, align 8
  %36 = load %struct.adxl34x*, %struct.adxl34x** %6, align 8
  %37 = call i64 @IS_ERR(%struct.adxl34x* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load %struct.adxl34x*, %struct.adxl34x** %6, align 8
  %41 = call i32 @PTR_ERR(%struct.adxl34x* %40)
  store i32 %41, i32* %3, align 4
  br label %46

42:                                               ; preds = %21
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.adxl34x*, %struct.adxl34x** %6, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.adxl34x* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %42, %39, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.adxl34x* @adxl34x_probe(i32*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.adxl34x*) #1

declare dso_local i32 @PTR_ERR(%struct.adxl34x*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adxl34x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
