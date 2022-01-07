; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_bus_busy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_bus_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LPI2C_MSR = common dso_local global i64 0, align 8
@MSR_ALF = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MSR_BBF = common dso_local global i32 0, align 4
@MSR_MBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"bus not work\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpi2c_imx_struct*)* @lpi2c_imx_bus_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpi2c_imx_bus_busy(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpi2c_imx_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %3, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %4, align 8
  br label %7

7:                                                ; preds = %1, %50
  %8 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %9 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPI2C_MSR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MSR_ALF, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %7
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %21 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LPI2C_MSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %7
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @MSR_BBF, align 4
  %31 = load i32, i32* @MSR_MBF, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %52

36:                                               ; preds = %28
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i64, i64* %4, align 8
  %39 = call i64 @msecs_to_jiffies(i32 500)
  %40 = add i64 %38, %39
  %41 = call i64 @time_after(i64 %37, i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %3, align 8
  %45 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = call i32 @dev_dbg(i32* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ETIMEDOUT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %36
  %51 = call i32 (...) @schedule()
  br label %7

52:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %43, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
