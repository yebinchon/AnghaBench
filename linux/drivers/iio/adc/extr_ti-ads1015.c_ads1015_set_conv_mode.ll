; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_set_conv_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_set_conv_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ads1015_data = type { i32 }

@ADS1015_CFG_REG = common dso_local global i32 0, align 4
@ADS1015_CFG_MOD_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_MOD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ads1015_data*, i32)* @ads1015_set_conv_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_set_conv_mode(%struct.ads1015_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ads1015_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ads1015_data* %0, %struct.ads1015_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ads1015_data*, %struct.ads1015_data** %3, align 8
  %6 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ADS1015_CFG_REG, align 4
  %9 = load i32, i32* @ADS1015_CFG_MOD_MASK, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @ADS1015_CFG_MOD_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = call i32 @regmap_update_bits(i32 %7, i32 %8, i32 %9, i32 %12)
  ret i32 %13
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
