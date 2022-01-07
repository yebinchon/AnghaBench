; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_flush_i2c_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-nomadik.c_flush_i2c_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nmk_i2c_dev = type { %struct.TYPE_3__*, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@I2C_CR_FTX = common dso_local global i32 0, align 4
@I2C_CR_FRX = common dso_local global i32 0, align 4
@I2C_CR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"flushing operation timed out giving up after %d attempts\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@LOOP_ATTEMPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nmk_i2c_dev*)* @flush_i2c_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_i2c_fifo(%struct.nmk_i2c_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nmk_i2c_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nmk_i2c_dev* %0, %struct.nmk_i2c_dev** %3, align 8
  %6 = load i32, i32* @I2C_CR_FTX, align 4
  %7 = load i32, i32* @I2C_CR_FRX, align 4
  %8 = or i32 %6, %7
  %9 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @I2C_CR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 %8, i64 %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %46, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %49

18:                                               ; preds = %15
  %19 = load i64, i64* @jiffies, align 8
  %20 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %21 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %19, %23
  store i64 %24, i64* %5, align 8
  br label %25

25:                                               ; preds = %44, %18
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @time_after(i64 %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %45

31:                                               ; preds = %25
  %32 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @I2C_CR, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = load i32, i32* @I2C_CR_FTX, align 4
  %39 = load i32, i32* @I2C_CR_FRX, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %37, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %57

44:                                               ; preds = %31
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %15

49:                                               ; preds = %15
  %50 = load %struct.nmk_i2c_dev*, %struct.nmk_i2c_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nmk_i2c_dev, %struct.nmk_i2c_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 10)
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %49, %43
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
