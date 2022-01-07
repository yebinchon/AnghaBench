; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_validate_mm_current.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-aat1290.c_aat1290_led_validate_mm_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aat1290_led = type { i64* }
%struct.aat1290_led_config_data = type { i64, i32 }

@AAT1290_MM_CURRENT_SCALE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aat1290_led*, %struct.aat1290_led_config_data*)* @aat1290_led_validate_mm_current to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aat1290_led_validate_mm_current(%struct.aat1290_led* %0, %struct.aat1290_led_config_data* %1) #0 {
  %3 = alloca %struct.aat1290_led*, align 8
  %4 = alloca %struct.aat1290_led_config_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.aat1290_led* %0, %struct.aat1290_led** %3, align 8
  store %struct.aat1290_led_config_data* %1, %struct.aat1290_led_config_data** %4, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @AAT1290_MM_CURRENT_SCALE_SIZE, align 4
  store i32 %8, i32* %7, align 4
  br label %9

9:                                                ; preds = %36, %2
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %10, %11
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %16, %17
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %5, align 4
  %21 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %4, align 8
  %22 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.aat1290_led*, %struct.aat1290_led** %3, align 8
  %25 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %23, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %14
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %7, align 4
  br label %36

34:                                               ; preds = %14
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %34, %32
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.aat1290_led*, %struct.aat1290_led** %3, align 8
  %39 = getelementptr inbounds %struct.aat1290_led, %struct.aat1290_led* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %4, align 8
  %46 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.aat1290_led_config_data*, %struct.aat1290_led_config_data** %4, align 8
  %50 = getelementptr inbounds %struct.aat1290_led_config_data, %struct.aat1290_led_config_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
