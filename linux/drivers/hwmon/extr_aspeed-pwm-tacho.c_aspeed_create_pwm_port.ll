; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_pwm_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_create_pwm_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_pwm_tacho_data = type { i32*, i32*, i32, i32* }

@TYPEM = common dso_local global i32 0, align 4
@INIT_FAN_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aspeed_pwm_tacho_data*, i64)* @aspeed_create_pwm_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aspeed_create_pwm_port(%struct.aspeed_pwm_tacho_data* %0, i64 %1) #0 {
  %3 = alloca %struct.aspeed_pwm_tacho_data*, align 8
  %4 = alloca i64, align 8
  store %struct.aspeed_pwm_tacho_data* %0, %struct.aspeed_pwm_tacho_data** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %6 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @aspeed_set_pwm_port_enable(i32 %7, i64 %8, i32 1)
  %10 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %11 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* %4, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* @TYPEM, align 4
  %16 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %17 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %15, i32* %20, align 4
  %21 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %22 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @TYPEM, align 4
  %26 = call i32 @aspeed_set_pwm_port_type(i32 %23, i64 %24, i32 %25)
  %27 = load i32, i32* @INIT_FAN_CTRL, align 4
  %28 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %29 = getelementptr inbounds %struct.aspeed_pwm_tacho_data, %struct.aspeed_pwm_tacho_data* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %27, i32* %32, align 4
  %33 = load %struct.aspeed_pwm_tacho_data*, %struct.aspeed_pwm_tacho_data** %3, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @INIT_FAN_CTRL, align 4
  %36 = call i32 @aspeed_set_pwm_port_fan_ctrl(%struct.aspeed_pwm_tacho_data* %33, i64 %34, i32 %35)
  ret void
}

declare dso_local i32 @aspeed_set_pwm_port_enable(i32, i64, i32) #1

declare dso_local i32 @aspeed_set_pwm_port_type(i32, i64, i32) #1

declare dso_local i32 @aspeed_set_pwm_port_fan_ctrl(%struct.aspeed_pwm_tacho_data*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
