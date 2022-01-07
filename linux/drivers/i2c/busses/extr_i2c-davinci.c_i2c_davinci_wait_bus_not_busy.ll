; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_wait_bus_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-davinci.c_i2c_davinci_wait_bus_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_i2c_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@DAVINCI_I2C_STR_REG = common dso_local global i32 0, align 4
@DAVINCI_I2C_STR_BB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout waiting for bus ready\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.davinci_i2c_dev*)* @i2c_davinci_wait_bus_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_davinci_wait_bus_not_busy(%struct.davinci_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.davinci_i2c_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.davinci_i2c_dev* %0, %struct.davinci_i2c_dev** %3, align 8
  %5 = load i64, i64* @jiffies, align 8
  %6 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add i64 %5, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %13 = load i32, i32* @DAVINCI_I2C_STR_REG, align 4
  %14 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %12, i32 %13)
  %15 = load i32, i32* @DAVINCI_I2C_STR_BB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %44

19:                                               ; preds = %11
  %20 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %21

21:                                               ; preds = %19
  %22 = load i64, i64* @jiffies, align 8
  %23 = load i64, i64* %4, align 8
  %24 = call i64 @time_before_eq(i64 %22, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %11, label %26

26:                                               ; preds = %21
  %27 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %28 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_warn(i32 %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.davinci_i2c_dev, %struct.davinci_i2c_dev* %31, i32 0, i32 0
  %33 = call i32 @i2c_recover_bus(%struct.TYPE_2__* %32)
  %34 = load %struct.davinci_i2c_dev*, %struct.davinci_i2c_dev** %3, align 8
  %35 = load i32, i32* @DAVINCI_I2C_STR_REG, align 4
  %36 = call i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev* %34, i32 %35)
  %37 = load i32, i32* @DAVINCI_I2C_STR_BB, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %26
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %40, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @davinci_i2c_read_reg(%struct.davinci_i2c_dev*, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @i2c_recover_bus(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
