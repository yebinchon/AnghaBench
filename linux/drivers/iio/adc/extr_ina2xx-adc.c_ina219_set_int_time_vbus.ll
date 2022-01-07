; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina219_set_int_time_vbus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina219_set_int_time_vbus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina2xx_chip_info = type { i32 }

@INA219_ITB_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina2xx_chip_info*, i32, i32*)* @ina219_set_int_time_vbus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina219_set_int_time_vbus(%struct.ina2xx_chip_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ina2xx_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ina2xx_chip_info* %0, %struct.ina2xx_chip_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %10, align 4
  %12 = call i32 @ina219_lookup_int_time(i32* %10, i32* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %20 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @INA219_ITB_MASK, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @INA219_SHIFT_ITB(i32 %26)
  %28 = load i32, i32* @INA219_ITB_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 4
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %17, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @ina219_lookup_int_time(i32*, i32*) #1

declare dso_local i32 @INA219_SHIFT_ITB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
