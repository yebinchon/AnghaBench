; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pwm_tacho_data = type { i32, i32*, i32*, i32*, i32*, i32*, i32* }

@M_PWM_DIV_H = common dso_local global i32 0, align 4
@TYPEM = common dso_local global i64 0, align 8
@M_PWM_DIV_L = common dso_local global i32 0, align 4
@M_PWM_PERIOD = common dso_local global i32 0, align 4
@M_TACH_CLK_DIV = common dso_local global i32 0, align 4
@M_TACH_UNIT = common dso_local global i32 0, align 4
@M_TACH_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_pwm_tacho_data*)* @aspeed_create_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_create_type(%struct.aspeed_pwm_tacho_data* %0) #0 {
  %2 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  store %struct.aspeed_pwm_tacho_data* %0, %struct.aspeed_pwm_tacho_data** %2, align 8
  %3 = load i32, i32* @M_PWM_DIV_H, align 4
  %4 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %5 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %4, i32 0, i32 6
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @TYPEM, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @M_PWM_DIV_L, align 4
  %10 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %11 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %10, i32 0, i32 5
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @TYPEM, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 %9, i32* %14, align 4
  %15 = load i32, i32* @M_PWM_PERIOD, align 4
  %16 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %17 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @TYPEM, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %22 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* @TYPEM, align 8
  %25 = load i32, i32* @M_PWM_DIV_H, align 4
  %26 = load i32, i32* @M_PWM_DIV_L, align 4
  %27 = load i32, i32* @M_PWM_PERIOD, align 4
  %28 = call i32 @aspeed_set_pwm_clock_values(i32 %23, i64 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %30 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i64, i64* @TYPEM, align 8
  %33 = call i32 @aspeed_set_tacho_type_enable(i32 %31, i64 %32, i32 1)
  %34 = load i32, i32* @M_TACH_CLK_DIV, align 4
  %35 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %36 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @TYPEM, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %34, i32* %39, align 4
  %40 = load i32, i32* @M_TACH_UNIT, align 4
  %41 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %42 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @TYPEM, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @M_TACH_MODE, align 4
  %47 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %48 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @TYPEM, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %46, i32* %51, align 4
  %52 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %2, align 8
  %53 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* @TYPEM, align 8
  %56 = load i32, i32* @M_TACH_MODE, align 4
  %57 = load i32, i32* @M_TACH_UNIT, align 4
  %58 = load i32, i32* @M_TACH_CLK_DIV, align 4
  %59 = call i32 @aspeed_set_tacho_type_values(i32 %54, i64 %55, i32 %56, i32 %57, i32 %58)
  ret void
}

declare dso_local i32 @aspeed_set_pwm_clock_values(i32, i64, i32, i32, i32) #1

declare dso_local i32 @aspeed_set_tacho_type_enable(i32, i64, i32) #1

declare dso_local i32 @aspeed_set_tacho_type_values(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
