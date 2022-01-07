; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_mc13783-adc.c_mc13783_adc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_mc13783-adc.c_mc13783_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mc13783_adc_priv = type { i32 }
%struct.sensor_device_attribute = type { i32 }

@MC13XXX_ADC_MODE_MULT_CHAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i32*)* @mc13783_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13783_adc_read(%struct.device* %0, %struct.device_attribute* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mc13783_adc_priv*, align 8
  %9 = alloca %struct.sensor_device_attribute*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.mc13783_adc_priv* @dev_get_drvdata(%struct.device* %13)
  store %struct.mc13783_adc_priv* %14, %struct.mc13783_adc_priv** %8, align 8
  %15 = load %struct.device_attribute*, %struct.device_attribute** %6, align 8
  %16 = call %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute* %15)
  store %struct.sensor_device_attribute* %16, %struct.sensor_device_attribute** %9, align 8
  %17 = load %struct.sensor_device_attribute*, %struct.sensor_device_attribute** %9, align 8
  %18 = getelementptr inbounds %struct.sensor_device_attribute, %struct.sensor_device_attribute* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %10, align 4
  %20 = load %struct.mc13783_adc_priv*, %struct.mc13783_adc_priv** %8, align 8
  %21 = getelementptr inbounds %struct.mc13783_adc_priv, %struct.mc13783_adc_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MC13XXX_ADC_MODE_MULT_CHAN, align 4
  %24 = load i32, i32* %10, align 4
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %26 = call i32 @mc13xxx_adc_do_conversion(i32 %22, i32 %23, i32 %24, i32 0, i32 0, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %4, align 4
  br label %50

31:                                               ; preds = %3
  %32 = load i32, i32* %10, align 4
  %33 = icmp uge i32 %32, 16
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 7, i32* %10, align 4
  br label %35

35:                                               ; preds = %34, %31
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 7
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = urem i32 %38, 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ugt i32 %43, 3
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 14, i32 2
  %47 = lshr i32 %42, %46
  %48 = and i32 %47, 1023
  %49 = load i32*, i32** %7, align 8
  store i32 %48, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %35, %29
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.mc13783_adc_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.sensor_device_attribute* @to_sensor_dev_attr(%struct.device_attribute*) #1

declare dso_local i32 @mc13xxx_adc_do_conversion(i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
