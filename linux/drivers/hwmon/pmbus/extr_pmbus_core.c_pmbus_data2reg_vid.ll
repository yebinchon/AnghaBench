; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_pmbus_core.c_pmbus_data2reg_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmbus_data = type { i32 }
%struct.pmbus_sensor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pmbus_data*, %struct.pmbus_sensor*, i64)* @pmbus_data2reg_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pmbus_data2reg_vid(%struct.pmbus_data* %0, %struct.pmbus_sensor* %1, i64 %2) #0 {
  %4 = alloca %struct.pmbus_data*, align 8
  %5 = alloca %struct.pmbus_sensor*, align 8
  %6 = alloca i64, align 8
  store %struct.pmbus_data* %0, %struct.pmbus_data** %4, align 8
  store %struct.pmbus_sensor* %1, %struct.pmbus_sensor** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @clamp_val(i64 %7, i32 500, i32 1600)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = sub nsw i64 1600, %9
  %11 = mul nsw i64 %10, 100
  %12 = trunc i64 %11 to i32
  %13 = call i64 @DIV_ROUND_CLOSEST(i32 %12, i32 625)
  %14 = add nsw i64 2, %13
  ret i64 %14
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
