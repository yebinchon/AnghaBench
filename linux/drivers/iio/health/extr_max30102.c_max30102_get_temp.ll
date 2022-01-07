; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_max30102.c_max30102_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max30102_data = type { i32 }

@MAX30102_REG_TEMP_CONFIG = common dso_local global i32 0, align 4
@MAX30102_REG_TEMP_CONFIG_TEMP_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max30102_data*, i32*, i32)* @max30102_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max30102_get_temp(%struct.max30102_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.max30102_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.max30102_data* %0, %struct.max30102_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load %struct.max30102_data*, %struct.max30102_data** %5, align 8
  %13 = call i32 @max30102_set_power(%struct.max30102_data* %12, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %43

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.max30102_data*, %struct.max30102_data** %5, align 8
  %21 = getelementptr inbounds %struct.max30102_data, %struct.max30102_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MAX30102_REG_TEMP_CONFIG, align 4
  %24 = load i32, i32* @MAX30102_REG_TEMP_CONFIG_TEMP_EN, align 4
  %25 = load i32, i32* @MAX30102_REG_TEMP_CONFIG_TEMP_EN, align 4
  %26 = call i32 @regmap_update_bits(i32 %22, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %35

30:                                               ; preds = %19
  %31 = call i32 @msleep(i32 35)
  %32 = load %struct.max30102_data*, %struct.max30102_data** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @max30102_read_temp(%struct.max30102_data* %32, i32* %33)
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %29
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load %struct.max30102_data*, %struct.max30102_data** %5, align 8
  %40 = call i32 @max30102_set_power(%struct.max30102_data* %39, i32 0)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @max30102_set_power(%struct.max30102_data*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @max30102_read_temp(%struct.max30102_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
