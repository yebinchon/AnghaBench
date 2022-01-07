; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_int_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_max44009.c_max44009_read_int_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max44009_data = type { i32 }

@MAX44009_REG_CFG = common dso_local global i32 0, align 4
@max44009_int_time_ns_array = common dso_local global i32* null, align 8
@MAX44009_CFG_TIM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max44009_data*)* @max44009_read_int_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max44009_read_int_time(%struct.max44009_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.max44009_data*, align 8
  %4 = alloca i32, align 4
  store %struct.max44009_data* %0, %struct.max44009_data** %3, align 8
  %5 = load %struct.max44009_data*, %struct.max44009_data** %3, align 8
  %6 = getelementptr inbounds %struct.max44009_data, %struct.max44009_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @MAX44009_REG_CFG, align 4
  %9 = call i32 @i2c_smbus_read_byte_data(i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %22

14:                                               ; preds = %1
  %15 = load i32*, i32** @max44009_int_time_ns_array, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MAX44009_CFG_TIM_MASK, align 4
  %18 = and i32 %16, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @i2c_smbus_read_byte_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
