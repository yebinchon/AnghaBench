; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_calibrate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad7793.c_ad7793_calibrate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad7793_state = type { i32 }

@ad7793_calib_arr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad7793_state*)* @ad7793_calibrate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad7793_calibrate_all(%struct.ad7793_state* %0) #0 {
  %2 = alloca %struct.ad7793_state*, align 8
  store %struct.ad7793_state* %0, %struct.ad7793_state** %2, align 8
  %3 = load %struct.ad7793_state*, %struct.ad7793_state** %2, align 8
  %4 = getelementptr inbounds %struct.ad7793_state, %struct.ad7793_state* %3, i32 0, i32 0
  %5 = load i32, i32* @ad7793_calib_arr, align 4
  %6 = load i32, i32* @ad7793_calib_arr, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = call i32 @ad_sd_calibrate_all(i32* %4, i32 %5, i32 %7)
  ret i32 %8
}

declare dso_local i32 @ad_sd_calibrate_all(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
