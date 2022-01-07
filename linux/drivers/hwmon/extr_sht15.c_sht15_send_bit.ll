; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_send_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_send_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i32, i32 }

@SHT15_TSU = common dso_local global i32 0, align 4
@SHT15_TSCKH = common dso_local global i32 0, align 4
@SHT15_TSCKL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sht15_data*, i32)* @sht15_send_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sht15_send_bit(%struct.sht15_data* %0, i32 %1) #0 {
  %3 = alloca %struct.sht15_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %6 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @gpiod_set_value(i32 %7, i32 %8)
  %10 = load i32, i32* @SHT15_TSU, align 4
  %11 = call i32 @ndelay(i32 %10)
  %12 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %13 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @gpiod_set_value(i32 %14, i32 1)
  %16 = load i32, i32* @SHT15_TSCKH, align 4
  %17 = call i32 @ndelay(i32 %16)
  %18 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %19 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @gpiod_set_value(i32 %20, i32 0)
  %22 = load i32, i32* @SHT15_TSCKL, align 4
  %23 = call i32 @ndelay(i32 %22)
  ret void
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
