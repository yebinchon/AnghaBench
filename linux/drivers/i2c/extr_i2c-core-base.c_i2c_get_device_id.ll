; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_get_device_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_get_device_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_identity = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_ADDR_DEVICE_ID = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_get_device_id(%struct.i2c_client* %0, %struct.i2c_device_identity* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_identity*, align 8
  %6 = alloca %struct.i2c_adapter*, align 8
  %7 = alloca %union.i2c_smbus_data, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_identity* %1, %struct.i2c_device_identity** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %6, align 8
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %13 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %14 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %71

19:                                               ; preds = %2
  %20 = bitcast %union.i2c_smbus_data* %7 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 3, i32* %22, align 4
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %24 = load i32, i32* @I2C_ADDR_DEVICE_ID, align 4
  %25 = load i32, i32* @I2C_SMBUS_READ, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = shl i32 %28, 1
  %30 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %31 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %23, i32 %24, i32 0, i32 %25, i32 %29, i32 %30, %union.i2c_smbus_data* %7)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %19
  %37 = bitcast %union.i2c_smbus_data* %7 to i32**
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 4
  %42 = bitcast %union.i2c_smbus_data* %7 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = or i32 %41, %46
  %48 = load %struct.i2c_device_identity*, %struct.i2c_device_identity** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = bitcast %union.i2c_smbus_data* %7 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 15
  %55 = shl i32 %54, 5
  %56 = bitcast %union.i2c_smbus_data* %7 to i32**
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = ashr i32 %59, 3
  %61 = or i32 %55, %60
  %62 = load %struct.i2c_device_identity*, %struct.i2c_device_identity** %5, align 8
  %63 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = bitcast %union.i2c_smbus_data* %7 to i32**
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 7
  %69 = load %struct.i2c_device_identity*, %struct.i2c_device_identity** %5, align 8
  %70 = getelementptr inbounds %struct.i2c_device_identity, %struct.i2c_device_identity* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %36, %34, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter*, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
