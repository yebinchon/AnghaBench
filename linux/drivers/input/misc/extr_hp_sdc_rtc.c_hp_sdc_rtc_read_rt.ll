; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_rt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_read_rt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec64 = type { i64, i32 }

@HP_SDC_CMD_LOAD_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timespec64*)* @hp_sdc_rtc_read_rt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_read_rt(%struct.timespec64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timespec64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timespec64* %0, %struct.timespec64** %3, align 8
  %7 = load i32, i32* @HP_SDC_CMD_LOAD_RT, align 4
  %8 = call i32 @hp_sdc_rtc_read_i8042timer(i32 %7, i32 5)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 16777215
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 65535
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = srem i32 %18, 100
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, 10000
  %22 = mul nsw i64 %21, 1000
  %23 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %24 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 100
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 86400
  %29 = add nsw i32 %26, %28
  %30 = load %struct.timespec64*, %struct.timespec64** %3, align 8
  %31 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %12, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @hp_sdc_rtc_read_i8042timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
