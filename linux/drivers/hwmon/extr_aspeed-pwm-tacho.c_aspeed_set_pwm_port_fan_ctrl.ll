; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_pwm_port_fan_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_set_pwm_port_fan_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pwm_tacho_data = type { i32*, i64*, i32 }

@PWM_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_pwm_tacho_data*, i64, i64)* @aspeed_set_pwm_port_fan_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_set_pwm_port_fan_ctrl(%struct.aspeed_pwm_tacho_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aspeed_pwm_tacho_data* %0, %struct.aspeed_pwm_tacho_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %10 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %13 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %12, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %22, %24
  %26 = load i64, i64* @PWM_MAX, align 8
  %27 = udiv i64 %25, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %33 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @aspeed_set_pwm_port_enable(i32 %34, i64 %35, i32 0)
  br label %54

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %37
  %43 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %44 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @aspeed_set_pwm_port_duty_rising_falling(i32 %45, i64 %46, i32 0, i32 %47)
  %49 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %4, align 8
  %50 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @aspeed_set_pwm_port_enable(i32 %51, i64 %52, i32 1)
  br label %54

54:                                               ; preds = %42, %31
  ret void
}

declare dso_local i32 @aspeed_set_pwm_port_enable(i32, i64, i32) #1

declare dso_local i32 @aspeed_set_pwm_port_duty_rising_falling(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
