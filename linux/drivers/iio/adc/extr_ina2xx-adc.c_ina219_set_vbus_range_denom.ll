; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina219_set_vbus_range_denom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ina2xx-adc.c_ina219_set_vbus_range_denom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina2xx_chip_info = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@INA219_BRNG_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina2xx_chip_info*, i32, i32*)* @ina219_set_vbus_range_denom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina219_set_vbus_range_denom(%struct.ina2xx_chip_info* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ina2xx_chip_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.ina2xx_chip_info* %0, %struct.ina2xx_chip_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %12 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %11, i32 0, i32 0
  store i32 32, i32* %12, align 4
  br label %23

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load %struct.ina2xx_chip_info*, %struct.ina2xx_chip_info** %5, align 8
  %18 = getelementptr inbounds %struct.ina2xx_chip_info, %struct.ina2xx_chip_info* %17, i32 0, i32 0
  store i32 16, i32* %18, align 4
  br label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %39

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %10
  %24 = load i32, i32* @INA219_BRNG_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %25
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call i32 @INA219_SHIFT_BRNG(i32 %32)
  %34 = load i32, i32* @INA219_BRNG_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %23, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @INA219_SHIFT_BRNG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
