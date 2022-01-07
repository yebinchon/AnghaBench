; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe_dt_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe_dt_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.at91_adc_state = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"atmel,adc-ts-wires\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ADC Touch screen is disabled.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Unsupported number of touchscreen wires (%d). Should be 4 or 5.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"atmel,adc-ts-pressure-threshold\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid pressure threshold for the touchscreen\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.at91_adc_state*, %struct.device*)* @at91_adc_probe_dt_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_probe_dt_ts(%struct.device_node* %0, %struct.at91_adc_state* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.at91_adc_state*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.at91_adc_state* %1, %struct.at91_adc_state** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = call i32 @dev_info(%struct.device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %53

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %23 [
    i32 4, label %19
    i32 5, label %19
  ]

19:                                               ; preds = %17, %17
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %22 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %29

23:                                               ; preds = %17
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %24, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %19
  %30 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %31 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %53

37:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  %38 = load %struct.device_node*, %struct.device_node** %5, align 8
  %39 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32* %9)
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %42 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %44 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %53

48:                                               ; preds = %37
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %48, %47, %36, %23, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
