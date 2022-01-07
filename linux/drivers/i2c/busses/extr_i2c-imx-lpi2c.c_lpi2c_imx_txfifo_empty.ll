; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_txfifo_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_txfifo_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LPI2C_MFSR = common dso_local global i64 0, align 8
@LPI2C_MSR = common dso_local global i64 0, align 8
@MSR_NDF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"NDF detected\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"txfifo empty timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpi2c_imx_struct*)* @lpi2c_imx_txfifo_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpi2c_imx_txfifo_empty(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpi2c_imx_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %9 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPI2C_MFSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = and i32 %13, 255
  store i32 %14, i32* %5, align 4
  %15 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %16 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LPI2C_MSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* @MSR_NDF, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %7
  %25 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %26 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = call i32 @dev_dbg(i32* %27, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %51

31:                                               ; preds = %7
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @msecs_to_jiffies(i32 500)
  %35 = add i64 %33, %34
  %36 = call i64 @time_after(i64 %32, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %40 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_dbg(i32* %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %51

45:                                               ; preds = %31
  %46 = call i32 (...) @schedule()
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %7, label %50

50:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %38, %24
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
