; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30100.c_max30100_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30100_data = type { i32 }

@MAX30100_REG_MODE_CONFIG = common dso_local global i32 0, align 4
@MAX30100_REG_MODE_CONFIG_TEMP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30100_data*, i32*)* @max30100_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30100_get_temp(%struct.max30100_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.max30100_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.max30100_data* %0, %struct.max30100_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.max30100_data*, %struct.max30100_data** %4, align 8
  %8 = getelementptr inbounds %struct.max30100_data, %struct.max30100_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MAX30100_REG_MODE_CONFIG, align 4
  %11 = load i32, i32* @MAX30100_REG_MODE_CONFIG_TEMP_EN, align 4
  %12 = load i32, i32* @MAX30100_REG_MODE_CONFIG_TEMP_EN, align 4
  %13 = call i32 @regmap_update_bits(i32 %9, i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %23

18:                                               ; preds = %2
  %19 = call i32 @msleep(i32 35)
  %20 = load %struct.max30100_data*, %struct.max30100_data** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = call i32 @max30100_read_temp(%struct.max30100_data* %20, i32* %21)
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %16
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @max30100_read_temp(%struct.max30100_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
