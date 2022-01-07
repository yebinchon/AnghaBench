; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_tacho_type_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_tacho_type_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.regmap = type { i32 }

@TYPE_CTRL_FAN_MODE = common dso_local global i64 0, align 8
@TYPE_CTRL_FAN_PERIOD = common dso_local global i64 0, align 8
@TYPE_CTRL_FAN_DIVISION = common dso_local global i64 0, align 8
@type_params = common dso_local global %struct.TYPE_2__* null, align 8
@TYPE_CTRL_FAN_MASK = common dso_local global i32 0, align 4
@TYPE_CTRL_FAN1_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regmap*, i64, i64, i64, i64)* @aspeed_set_tacho_type_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_set_tacho_type_values(%struct.regmap* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i64, i64* @TYPE_CTRL_FAN_MODE, align 8
  %14 = shl i64 %12, %13
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @TYPE_CTRL_FAN_PERIOD, align 8
  %17 = shl i64 %15, %16
  %18 = or i64 %14, %17
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @TYPE_CTRL_FAN_DIVISION, align 8
  %21 = shl i64 %19, %20
  %22 = or i64 %18, %21
  store i64 %22, i64* %11, align 8
  %23 = load %struct.regmap*, %struct.regmap** %6, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @type_params, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TYPE_CTRL_FAN_MASK, align 4
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @regmap_update_bits(%struct.regmap* %23, i32 %28, i32 %29, i64 %30)
  %32 = load %struct.regmap*, %struct.regmap** %6, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @type_params, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @TYPE_CTRL_FAN1_MASK, align 4
  %39 = load i64, i64* %9, align 8
  %40 = shl i64 %39, 16
  %41 = call i32 @regmap_update_bits(%struct.regmap* %32, i32 %37, i32 %38, i64 %40)
  ret void
}

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
