; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_pdata_prop_import.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_g762_pdata_prop_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.g762_platform_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @g762_pdata_prop_import to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g762_pdata_prop_import(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.g762_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = call %struct.g762_platform_data* @dev_get_platdata(i32* %7)
  store %struct.g762_platform_data* %8, %struct.g762_platform_data** %4, align 8
  %9 = load %struct.g762_platform_data*, %struct.g762_platform_data** %4, align 8
  %10 = icmp ne %struct.g762_platform_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

12:                                               ; preds = %1
  %13 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = load %struct.g762_platform_data*, %struct.g762_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.g762_platform_data, %struct.g762_platform_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @do_set_fan_gear_mode(i32* %14, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %12
  %24 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load %struct.g762_platform_data*, %struct.g762_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.g762_platform_data, %struct.g762_platform_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @do_set_pwm_polarity(i32* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load %struct.g762_platform_data*, %struct.g762_platform_data** %4, align 8
  %38 = getelementptr inbounds %struct.g762_platform_data, %struct.g762_platform_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @do_set_fan_startv(i32* %36, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %52

45:                                               ; preds = %34
  %46 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = load %struct.g762_platform_data*, %struct.g762_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.g762_platform_data, %struct.g762_platform_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @do_set_clk_freq(i32* %47, i32 %50)
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %45, %43, %32, %21, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.g762_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @do_set_fan_gear_mode(i32*, i32) #1

declare dso_local i32 @do_set_pwm_polarity(i32*, i32) #1

declare dso_local i32 @do_set_fan_startv(i32*, i32) #1

declare dso_local i32 @do_set_clk_freq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
