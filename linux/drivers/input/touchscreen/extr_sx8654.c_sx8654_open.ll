; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sx8654 = type { %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }

@I2C_REG_TOUCH0 = common dso_local global i32 0, align 4
@RATE_5000CPS = common dso_local global i32 0, align 4
@POWDLY_1_1MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"writing to I2C_REG_TOUCH0 failed\00", align 1
@CMD_PENTRG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"writing command CMD_PENTRG failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @sx8654_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sx8654_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.sx8654*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = call %struct.sx8654* @input_get_drvdata(%struct.input_dev* %7)
  store %struct.sx8654* %8, %struct.sx8654** %4, align 8
  %9 = load %struct.sx8654*, %struct.sx8654** %4, align 8
  %10 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* @I2C_REG_TOUCH0, align 4
  %14 = load i32, i32* @RATE_5000CPS, align 4
  %15 = load i32, i32* @POWDLY_1_1MS, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %12, i32 %13, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %27 = load i32, i32* @CMD_PENTRG, align 4
  %28 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @enable_irq(i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %36, %31, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sx8654* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
