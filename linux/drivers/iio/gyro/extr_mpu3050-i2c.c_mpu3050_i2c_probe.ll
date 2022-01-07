; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_mpu3050-i2c.c_mpu3050_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i8* }
%struct.regmap = type { i32 }
%struct.mpu3050 = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mpu3050* }

@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@mpu3050_i2c_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to register i2c regmap %d\0A\00", align 1
@I2C_MUX_LOCKED = common dso_local global i32 0, align 4
@I2C_MUX_GATE = common dso_local global i32 0, align 4
@mpu3050_i2c_bypass_select = common dso_local global i32 0, align 4
@mpu3050_i2c_bypass_deselect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to allocate I2C mux\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mpu3050_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpu3050_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mpu3050*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %21 = icmp ne %struct.i2c_device_id* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %24 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %7, align 8
  br label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %93

29:                                               ; preds = %22
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %30, i32* @mpu3050_i2c_regmap_config)
  store %struct.regmap* %31, %struct.regmap** %6, align 8
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = call i64 @IS_ERR(%struct.regmap* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.regmap* %38)
  %40 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.regmap*, %struct.regmap** %6, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %3, align 4
  br label %93

43:                                               ; preds = %29
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load %struct.regmap*, %struct.regmap** %6, align 8
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @mpu3050_common_probe(i32* %45, %struct.regmap* %46, i32 %49, i8* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %43
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = call i32 @dev_get_drvdata(i32* %58)
  %60 = call %struct.mpu3050* @iio_priv(i32 %59)
  store %struct.mpu3050* %60, %struct.mpu3050** %8, align 8
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load i32, i32* @I2C_MUX_LOCKED, align 4
  %67 = load i32, i32* @I2C_MUX_GATE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @mpu3050_i2c_bypass_select, align 4
  %70 = load i32, i32* @mpu3050_i2c_bypass_deselect, align 4
  %71 = call %struct.TYPE_3__* @i2c_mux_alloc(i32 %63, i32* %65, i32 1, i32 0, i32 %68, i32 %69, i32 %70)
  %72 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %73 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %72, i32 0, i32 0
  store %struct.TYPE_3__* %71, %struct.TYPE_3__** %73, align 8
  %74 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %75 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %82, label %78

78:                                               ; preds = %56
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %79, i32 0, i32 0
  %81 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %92

82:                                               ; preds = %56
  %83 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %84 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %85 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store %struct.mpu3050* %83, %struct.mpu3050** %87, align 8
  %88 = load %struct.mpu3050*, %struct.mpu3050** %8, align 8
  %89 = getelementptr inbounds %struct.mpu3050, %struct.mpu3050* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = call i32 @i2c_mux_add_adapter(%struct.TYPE_3__* %90, i32 0, i32 0, i32 0)
  br label %92

92:                                               ; preds = %82, %78
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %54, %35, %26, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @mpu3050_common_probe(i32*, %struct.regmap*, i32, i8*) #1

declare dso_local %struct.mpu3050* @iio_priv(i32) #1

declare dso_local i32 @dev_get_drvdata(i32*) #1

declare dso_local %struct.TYPE_3__* @i2c_mux_alloc(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @i2c_mux_add_adapter(%struct.TYPE_3__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
