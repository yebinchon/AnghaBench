; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_get_fan_tach_ch_measure_period.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_get_fan_tach_ch_measure_period.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pwm_tacho_data = type { i64, i64*, i64*, i64*, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.aspeed_pwm_tacho_data*, i64)* @aspeed_get_fan_tach_ch_measure_period to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aspeed_get_fan_tach_ch_measure_period(%struct.aspeed_pwm_tacho_data* %0, i64 %1) #0 {
  %3 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.aspeed_pwm_tacho_data* %0, %struct.aspeed_pwm_tacho_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %12 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %15 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %21 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = trunc i64 %26 to i32
  %28 = shl i32 1, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %8, align 8
  %30 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %31 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %30, i32 0, i32 3
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  store i64 1, i64* %9, align 8
  br label %42

39:                                               ; preds = %2
  %40 = load i64, i64* %9, align 8
  %41 = mul i64 %40, 2
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %39, %38
  %43 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %44 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %6, align 8
  %49 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %50 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %49, i32 0, i32 5
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = mul i64 %55, 2
  %57 = trunc i64 %56 to i32
  %58 = shl i32 4, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = mul i64 %61, %62
  %64 = load i64, i64* %9, align 8
  %65 = mul i64 %63, %64
  %66 = load i64, i64* %10, align 8
  %67 = mul i64 %65, %66
  %68 = load i64, i64* %6, align 8
  %69 = mul i64 %67, %68
  %70 = udiv i64 %60, %69
  ret i64 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
