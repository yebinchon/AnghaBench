; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_i2c_block_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-smbus.c_i2c_smbus_read_i2c_block_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%union.i2c_smbus_data = type { i32* }

@I2C_SMBUS_BLOCK_MAX = common dso_local global i64 0, align 8
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_I2C_BLOCK_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i2c_smbus_read_i2c_block_data(%struct.i2c_client* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %union.i2c_smbus_data, align 8
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i64, i64* @I2C_SMBUS_BLOCK_MAX, align 8
  store i64 %16, i64* %8, align 8
  br label %17

17:                                               ; preds = %15, %4
  %18 = load i64, i64* %8, align 8
  %19 = trunc i64 %18 to i32
  %20 = bitcast %union.i2c_smbus_data* %10 to i32**
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @I2C_SMBUS_READ, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* @I2C_SMBUS_I2C_BLOCK_DATA, align 4
  %35 = call i32 @i2c_smbus_xfer(i32 %25, i32 %28, i32 %31, i32 %32, i64 %33, i32 %34, %union.i2c_smbus_data* %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %17
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %54

40:                                               ; preds = %17
  %41 = load i64*, i64** %9, align 8
  %42 = bitcast %union.i2c_smbus_data* %10 to i32**
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = bitcast %union.i2c_smbus_data* %10 to i32**
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcpy(i64* %41, i32* %44, i32 %48)
  %50 = bitcast %union.i2c_smbus_data* %10 to i32**
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %40, %38
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @i2c_smbus_xfer(i32, i32, i32, i32, i64, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
