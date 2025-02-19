; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_vf610_dac.c_vf610_dac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_vf610_dac.c_vf610_dac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_dac = type { i64, i32 }

@VF610_DAC_CONV_LOW_POWER = common dso_local global i32 0, align 4
@VF610_DAC_DACEN = common dso_local global i32 0, align 4
@VF610_DAC_DACRFS = common dso_local global i32 0, align 4
@VF610_DAC_LPEN = common dso_local global i32 0, align 4
@VF610_DACx_STATCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_dac*)* @vf610_dac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_dac_init(%struct.vf610_dac* %0) #0 {
  %2 = alloca %struct.vf610_dac*, align 8
  %3 = alloca i32, align 4
  store %struct.vf610_dac* %0, %struct.vf610_dac** %2, align 8
  %4 = load i32, i32* @VF610_DAC_CONV_LOW_POWER, align 4
  %5 = load %struct.vf610_dac*, %struct.vf610_dac** %2, align 8
  %6 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  %7 = load i32, i32* @VF610_DAC_DACEN, align 4
  %8 = load i32, i32* @VF610_DAC_DACRFS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @VF610_DAC_LPEN, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.vf610_dac*, %struct.vf610_dac** %2, align 8
  %14 = getelementptr inbounds %struct.vf610_dac, %struct.vf610_dac* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VF610_DACx_STATCTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
