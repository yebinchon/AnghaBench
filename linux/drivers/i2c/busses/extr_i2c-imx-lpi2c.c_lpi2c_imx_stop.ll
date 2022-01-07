; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-imx-lpi2c.c_lpi2c_imx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpi2c_imx_struct = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@GEN_STOP = common dso_local global i32 0, align 4
@LPI2C_MTDR = common dso_local global i64 0, align 8
@LPI2C_MSR = common dso_local global i64 0, align 8
@MSR_SDF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"stop timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpi2c_imx_struct*)* @lpi2c_imx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpi2c_imx_stop(%struct.lpi2c_imx_struct* %0) #0 {
  %2 = alloca %struct.lpi2c_imx_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.lpi2c_imx_struct* %0, %struct.lpi2c_imx_struct** %2, align 8
  %5 = load i64, i64* @jiffies, align 8
  store i64 %5, i64* %3, align 8
  %6 = load i32, i32* @GEN_STOP, align 4
  %7 = shl i32 %6, 8
  %8 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %9 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LPI2C_MTDR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel(i32 %7, i64 %12)
  br label %14

14:                                               ; preds = %40, %1
  %15 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %16 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LPI2C_MSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MSR_SDF, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %41

26:                                               ; preds = %14
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @msecs_to_jiffies(i32 500)
  %30 = add i64 %28, %29
  %31 = call i64 @time_after(i64 %27, i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.lpi2c_imx_struct*, %struct.lpi2c_imx_struct** %2, align 8
  %35 = getelementptr inbounds %struct.lpi2c_imx_struct, %struct.lpi2c_imx_struct* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %41

38:                                               ; preds = %26
  %39 = call i32 (...) @schedule()
  br label %40

40:                                               ; preds = %38
  br i1 true, label %14, label %41

41:                                               ; preds = %40, %33, %25
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

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
