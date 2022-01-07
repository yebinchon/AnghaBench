; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ab8500.c_ab8500_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abx500_temp = type { %struct.ab8500_temp* }
%struct.ab8500_temp = type { i32, i32, i32 }

@BAT_CTRL = common dso_local global i32 0, align 4
@BTEMP_BALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.abx500_temp*, i32, i32*)* @ab8500_read_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_read_sensor(%struct.abx500_temp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.abx500_temp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ab8500_temp*, align 8
  store %struct.abx500_temp* %0, %struct.abx500_temp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.abx500_temp*, %struct.abx500_temp** %5, align 8
  %12 = getelementptr inbounds %struct.abx500_temp, %struct.abx500_temp* %11, i32 0, i32 0
  %13 = load %struct.ab8500_temp*, %struct.ab8500_temp** %12, align 8
  store %struct.ab8500_temp* %13, %struct.ab8500_temp** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BAT_CTRL, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load %struct.ab8500_temp*, %struct.ab8500_temp** %10, align 8
  %19 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ab8500_btemp_get_batctrl_temp(i32 %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %55

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BTEMP_BALL, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load %struct.ab8500_temp*, %struct.ab8500_temp** %10, align 8
  %29 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ab8500_btemp_get_temp(i32 %30)
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %54

33:                                               ; preds = %23
  %34 = load %struct.ab8500_temp*, %struct.ab8500_temp** %10, align 8
  %35 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ab8500_gpadc_convert(i32 %36, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %56

43:                                               ; preds = %33
  %44 = load %struct.ab8500_temp*, %struct.ab8500_temp** %10, align 8
  %45 = getelementptr inbounds %struct.ab8500_temp, %struct.ab8500_temp* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @ab8500_voltage_to_temp(i32* %45, i32 %46, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %56

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %27
  br label %55

55:                                               ; preds = %54, %17
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %41
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @ab8500_btemp_get_batctrl_temp(i32) #1

declare dso_local i32 @ab8500_btemp_get_temp(i32) #1

declare dso_local i32 @ab8500_gpadc_convert(i32, i32) #1

declare dso_local i32 @ab8500_voltage_to_temp(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
