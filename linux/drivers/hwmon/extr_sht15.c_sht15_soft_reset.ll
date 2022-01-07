; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_sht15.c_sht15_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sht15_data = type { i64 }

@SHT15_SOFT_RESET = common dso_local global i32 0, align 4
@SHT15_TSRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sht15_data*)* @sht15_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sht15_soft_reset(%struct.sht15_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sht15_data*, align 8
  %4 = alloca i32, align 4
  store %struct.sht15_data* %0, %struct.sht15_data** %3, align 8
  %5 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %6 = load i32, i32* @SHT15_SOFT_RESET, align 4
  %7 = call i32 @sht15_send_cmd(%struct.sht15_data* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @SHT15_TSRST, align 4
  %14 = call i32 @msleep(i32 %13)
  %15 = load %struct.sht15_data*, %struct.sht15_data** %3, align 8
  %16 = getelementptr inbounds %struct.sht15_data, %struct.sht15_data* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %12, %10
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @sht15_send_cmd(%struct.sht15_data*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
