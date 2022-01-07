; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-designware-common.c_i2c_dw_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_i2c_dev = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @i2c_dw_clk_rate(%struct.dw_i2c_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dw_i2c_dev*, align 8
  store %struct.dw_i2c_dev* %0, %struct.dw_i2c_dev** %3, align 8
  %4 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %5 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %4, i32 0, i32 0
  %6 = bitcast {}** %5 to i64 (%struct.dw_i2c_dev*)**
  %7 = load i64 (%struct.dw_i2c_dev*)*, i64 (%struct.dw_i2c_dev*)** %6, align 8
  %8 = icmp ne i64 (%struct.dw_i2c_dev*)* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON_ONCE(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %21

14:                                               ; preds = %1
  %15 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %16 = getelementptr inbounds %struct.dw_i2c_dev, %struct.dw_i2c_dev* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i64 (%struct.dw_i2c_dev*)**
  %18 = load i64 (%struct.dw_i2c_dev*)*, i64 (%struct.dw_i2c_dev*)** %17, align 8
  %19 = load %struct.dw_i2c_dev*, %struct.dw_i2c_dev** %3, align 8
  %20 = call i64 %18(%struct.dw_i2c_dev* %19)
  store i64 %20, i64* %2, align 8
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i64, i64* %2, align 8
  ret i64 %22
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
