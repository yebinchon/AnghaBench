; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_default_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/extr_i2c-core-base.c_i2c_default_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i32 }
%union.i2c_smbus_data = type { i32 }

@I2C_FUNC_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_SMBUS_WRITE = common dso_local global i32 0, align 4
@I2C_SMBUS_QUICK = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE = common dso_local global i32 0, align 4
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"No suitable probing method supported for address 0x%02X\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I2C_CLASS_HWMON = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i16)* @i2c_default_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_default_probe(%struct.i2c_adapter* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca %union.i2c_smbus_data, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load i16, i16* %4, align 2
  %8 = zext i16 %7 to i32
  %9 = and i32 %8, -8
  %10 = icmp eq i32 %9, 48
  br i1 %10, label %27, label %11

11:                                               ; preds = %2
  %12 = load i16, i16* %4, align 2
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, -16
  %15 = icmp eq i32 %14, 80
  br i1 %15, label %27, label %16

16:                                               ; preds = %11
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %18 = load i32, i32* @I2C_FUNC_SMBUS_QUICK, align 4
  %19 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %23 = load i16, i16* %4, align 2
  %24 = load i32, i32* @I2C_SMBUS_WRITE, align 4
  %25 = load i32, i32* @I2C_SMBUS_QUICK, align 4
  %26 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %22, i16 zeroext %23, i32 0, i32 %24, i32 0, i32 %25, %union.i2c_smbus_data* null)
  store i32 %26, i32* %5, align 4
  br label %46

27:                                               ; preds = %16, %11, %2
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %29 = load i32, i32* @I2C_FUNC_SMBUS_READ_BYTE, align 4
  %30 = call i64 @i2c_check_functionality(%struct.i2c_adapter* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %34 = load i16, i16* %4, align 2
  %35 = load i32, i32* @I2C_SMBUS_READ, align 4
  %36 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %37 = call i32 @i2c_smbus_xfer(%struct.i2c_adapter* %33, i16 zeroext %34, i32 0, i32 %35, i32 0, i32 %36, %union.i2c_smbus_data* %6)
  store i32 %37, i32* %5, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %39, i32 0, i32 1
  %41 = load i16, i16* %4, align 2
  %42 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i16 zeroext %41)
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %21
  %47 = load i32, i32* %5, align 4
  %48 = icmp sge i32 %47, 0
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i64 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @i2c_smbus_xfer(%struct.i2c_adapter*, i16 zeroext, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
