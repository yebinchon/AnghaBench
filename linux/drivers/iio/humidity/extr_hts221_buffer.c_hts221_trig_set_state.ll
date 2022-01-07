; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_trig_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_hts221_buffer.c_hts221_trig_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_trigger = type { i32 }
%struct.iio_dev = type { i32 }
%struct.hts221_hw = type { i32 }

@HTS221_REG_DRDY_EN_ADDR = common dso_local global i32 0, align 4
@HTS221_REG_DRDY_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_trigger*, i32)* @hts221_trig_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hts221_trig_set_state(%struct.iio_trigger* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_trigger*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.hts221_hw*, align 8
  store %struct.iio_trigger* %0, %struct.iio_trigger** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iio_trigger*, %struct.iio_trigger** %3, align 8
  %8 = call %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %10 = call %struct.hts221_hw* @iio_priv(%struct.iio_dev* %9)
  store %struct.hts221_hw* %10, %struct.hts221_hw** %6, align 8
  %11 = load %struct.hts221_hw*, %struct.hts221_hw** %6, align 8
  %12 = getelementptr inbounds %struct.hts221_hw, %struct.hts221_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @HTS221_REG_DRDY_EN_ADDR, align 4
  %15 = load i32, i32* @HTS221_REG_DRDY_EN_MASK, align 4
  %16 = load i32, i32* @HTS221_REG_DRDY_EN_MASK, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @FIELD_PREP(i32 %16, i32 %17)
  %19 = call i32 @regmap_update_bits(i32 %13, i32 %14, i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local %struct.iio_dev* @iio_trigger_get_drvdata(%struct.iio_trigger*) #1

declare dso_local %struct.hts221_hw* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
