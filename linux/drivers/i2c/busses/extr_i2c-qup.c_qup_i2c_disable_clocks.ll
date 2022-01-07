; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_disable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-qup.c_qup_i2c_disable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qup_i2c_dev = type { i32, i64, i32 }

@QUP_RESET_STATE = common dso_local global i32 0, align 4
@QUP_CONFIG = common dso_local global i64 0, align 8
@QUP_CLOCK_AUTO_GATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qup_i2c_dev*)* @qup_i2c_disable_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qup_i2c_disable_clocks(%struct.qup_i2c_dev* %0) #0 {
  %2 = alloca %struct.qup_i2c_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.qup_i2c_dev* %0, %struct.qup_i2c_dev** %2, align 8
  %4 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %5 = load i32, i32* @QUP_RESET_STATE, align 4
  %6 = call i32 @qup_i2c_change_state(%struct.qup_i2c_dev* %4, i32 %5)
  %7 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %8 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @clk_disable_unprepare(i32 %9)
  %11 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %12 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QUP_CONFIG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @QUP_CLOCK_AUTO_GATE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %22 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QUP_CONFIG, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load %struct.qup_i2c_dev*, %struct.qup_i2c_dev** %2, align 8
  %28 = getelementptr inbounds %struct.qup_i2c_dev, %struct.qup_i2c_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clk_disable_unprepare(i32 %29)
  ret void
}

declare dso_local i32 @qup_i2c_change_state(%struct.qup_i2c_dev*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
