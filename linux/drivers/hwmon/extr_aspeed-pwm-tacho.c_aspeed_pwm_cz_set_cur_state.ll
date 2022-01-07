; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_pwm_cz_set_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_aspeed-pwm-tacho.c_aspeed_pwm_cz_set_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.aspeed_cooling_device* }
%struct.aspeed_cooling_device = type { i64, i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64)* @aspeed_pwm_cz_set_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_pwm_cz_set_cur_state(%struct.thermal_cooling_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.aspeed_cooling_device*, align 8
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %8 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %7, i32 0, i32 0
  %9 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %8, align 8
  store %struct.aspeed_cooling_device* %9, %struct.aspeed_cooling_device** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %12 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ugt i64 %10, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %21 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %23 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %26 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %31 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %36 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %29, i32* %38, align 4
  %39 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %40 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %43 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %46 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.aspeed_cooling_device*, %struct.aspeed_cooling_device** %6, align 8
  %49 = getelementptr inbounds %struct.aspeed_cooling_device, %struct.aspeed_cooling_device* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @aspeed_set_pwm_port_fan_ctrl(%struct.TYPE_2__* %41, i64 %44, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %18, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @aspeed_set_pwm_port_fan_ctrl(%struct.TYPE_2__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
