; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_wait_for_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina3221.c_ina3221_wait_for_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ina3221_data = type { i32*, i32 }

@F_CVRF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ina3221_data*)* @ina3221_wait_for_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina3221_wait_for_data(%struct.ina3221_data* %0) #0 {
  %2 = alloca %struct.ina3221_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ina3221_data* %0, %struct.ina3221_data** %2, align 8
  %5 = load %struct.ina3221_data*, %struct.ina3221_data** %2, align 8
  %6 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @ina3221_reg_to_interval_us(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.ina3221_data*, %struct.ina3221_data** %2, align 8
  %10 = getelementptr inbounds %struct.ina3221_data, %struct.ina3221_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @F_CVRF, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @regmap_field_read_poll_timeout(i32 %14, i32 %15, i32 %16, i32 %17, i32 %19)
  ret i32 %20
}

declare dso_local i32 @ina3221_reg_to_interval_us(i32) #1

declare dso_local i32 @regmap_field_read_poll_timeout(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
