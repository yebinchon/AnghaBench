; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sx8654.c_sx8654_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sx8654 = type { %struct.TYPE_2__*, i32, %struct.i2c_client* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.i2c_client = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"writing command CMD_MANUAL failed\00", align 1
@I2C_REG_TOUCH0 = common dso_local global i32 0, align 4
@RATE_MANUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"writing to I2C_REG_TOUCH0 failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @sx8654_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx8654_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.sx8654*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %7 = call %struct.sx8654* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.sx8654* %7, %struct.sx8654** %3, align 8
  %8 = load %struct.sx8654*, %struct.sx8654** %3, align 8
  %9 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %8, i32 0, i32 2
  %10 = load %struct.i2c_client*, %struct.i2c_client** %9, align 8
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @disable_irq(i32 %13)
  %15 = load %struct.sx8654*, %struct.sx8654** %3, align 8
  %16 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load %struct.sx8654*, %struct.sx8654** %3, align 8
  %23 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %22, i32 0, i32 1
  %24 = call i32 @del_timer_sync(i32* %23)
  br label %25

25:                                               ; preds = %21, %1
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.sx8654*, %struct.sx8654** %3, align 8
  %28 = getelementptr inbounds %struct.sx8654, %struct.sx8654* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @i2c_smbus_write_byte(%struct.i2c_client* %26, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %50

39:                                               ; preds = %25
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load i32, i32* @I2C_REG_TOUCH0, align 4
  %42 = load i32, i32* @RATE_MANUAL, align 4
  %43 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %40, i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %47, i32 0, i32 0
  %49 = call i32 @dev_err(i32* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %35, %46, %39
  ret void
}

declare dso_local %struct.sx8654* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
