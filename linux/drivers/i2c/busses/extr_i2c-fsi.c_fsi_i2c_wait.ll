; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-fsi.c_fsi_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsi_i2c_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@I2C_FSI_STAT = common dso_local global i32 0, align 4
@I2C_STAT_ANY_RESP = common dso_local global i32 0, align 4
@I2C_CMD_SLEEP_MIN_US = common dso_local global i32 0, align 4
@I2C_CMD_SLEEP_MAX_US = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsi_i2c_port*, %struct.i2c_msg*, i64)* @fsi_i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsi_i2c_wait(%struct.fsi_i2c_port* %0, %struct.i2c_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsi_i2c_port*, align 8
  %6 = alloca %struct.i2c_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.fsi_i2c_port* %0, %struct.fsi_i2c_port** %5, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %10, align 8
  br label %12

12:                                               ; preds = %50, %3
  %13 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %14 = getelementptr inbounds %struct.fsi_i2c_port, %struct.fsi_i2c_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I2C_FSI_STAT, align 4
  %19 = call i32 @fsi_i2c_read_reg(i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %60

24:                                               ; preds = %12
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @I2C_STAT_ANY_RESP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.fsi_i2c_port*, %struct.fsi_i2c_port** %5, align 8
  %31 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @fsi_i2c_handle_status(%struct.fsi_i2c_port* %30, %struct.i2c_msg* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %29
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.i2c_msg*, %struct.i2c_msg** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %60

45:                                               ; preds = %38
  br label %50

46:                                               ; preds = %24
  %47 = load i32, i32* @I2C_CMD_SLEEP_MIN_US, align 4
  %48 = load i32, i32* @I2C_CMD_SLEEP_MAX_US, align 4
  %49 = call i32 @usleep_range(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %45
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* %7, align 8
  %53 = add i64 %51, %52
  %54 = load i64, i64* @jiffies, align 8
  %55 = call i64 @time_after(i64 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %12, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @ETIMEDOUT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %44, %36, %22
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @fsi_i2c_read_reg(i32, i32, i32*) #1

declare dso_local i32 @fsi_i2c_handle_status(%struct.fsi_i2c_port*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
