; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-i2c.c_bmc150_accel_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bmc150-accel-i2c.c_bmc150_accel_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i8* }
%struct.regmap = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@bmc150_regmap_conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to initialize i2c regmap\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bmc150_accel_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmc150_accel_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i8* null, i8** %7, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = call i64 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %20 = call i64 @i2c_check_functionality(i32 %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %15, %2
  %23 = phi i1 [ true, %2 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %25, i32* @bmc150_regmap_conf)
  store %struct.regmap* %26, %struct.regmap** %6, align 8
  %27 = load %struct.regmap*, %struct.regmap** %6, align 8
  %28 = call i64 @IS_ERR(%struct.regmap* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = call i32 @dev_err(i32* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.regmap*, %struct.regmap** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.regmap* %34)
  store i32 %35, i32* %3, align 4
  br label %53

36:                                               ; preds = %22
  %37 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %38 = icmp ne %struct.i2c_device_id* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %41 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 1
  %46 = load %struct.regmap*, %struct.regmap** %6, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @bmc150_accel_core_probe(i32* %45, %struct.regmap* %46, i32 %49, i8* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %43, %30
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @bmc150_accel_core_probe(i32*, %struct.regmap*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
