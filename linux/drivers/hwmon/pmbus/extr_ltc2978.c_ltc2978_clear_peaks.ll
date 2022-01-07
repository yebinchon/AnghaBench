; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_clear_peaks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_ltc2978.c_ltc2978_clear_peaks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2978_data = type { i32 }
%struct.i2c_client = type { i32 }

@LTC3880_MFR_CLEAR_PEAKS = common dso_local global i32 0, align 4
@PMBUS_CLEAR_FAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc2978_data*, %struct.i2c_client*, i32)* @ltc2978_clear_peaks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2978_clear_peaks(%struct.ltc2978_data* %0, %struct.i2c_client* %1, i32 %2) #0 {
  %4 = alloca %struct.ltc2978_data*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ltc2978_data* %0, %struct.ltc2978_data** %4, align 8
  store %struct.i2c_client* %1, %struct.i2c_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ltc2978_data*, %struct.ltc2978_data** %4, align 8
  %9 = call i64 @has_clear_peaks(%struct.ltc2978_data* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = load i32, i32* @LTC3880_MFR_CLEAR_PEAKS, align 4
  %14 = call i32 @ltc_write_byte(%struct.i2c_client* %12, i32 0, i32 %13)
  store i32 %14, i32* %7, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PMBUS_CLEAR_FAULTS, align 4
  %19 = call i32 @ltc_write_byte(%struct.i2c_client* %16, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i64 @has_clear_peaks(%struct.ltc2978_data*) #1

declare dso_local i32 @ltc_write_byte(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
