; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, %struct.at91_adc_caps*, i32*, i32, i32, i32, i32, i32, i32, i32 }
%struct.at91_adc_caps = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.at91_adc_data* }
%struct.at91_adc_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*, %struct.platform_device*)* @at91_adc_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_probe_pdata(%struct.at91_adc_state* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.at91_adc_data*, align 8
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.at91_adc_data*, %struct.at91_adc_data** %9, align 8
  store %struct.at91_adc_data* %10, %struct.at91_adc_data** %6, align 8
  %11 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %12 = icmp ne %struct.at91_adc_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %72

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %18 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.at91_adc_caps*
  %22 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %23 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %22, i32 0, i32 1
  store %struct.at91_adc_caps* %21, %struct.at91_adc_caps** %23, align 8
  %24 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %25 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %28 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 8
  %29 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %30 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %33 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 4
  %34 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %35 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %38 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 8
  %39 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %40 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %39, i32 0, i32 1
  %41 = load %struct.at91_adc_caps*, %struct.at91_adc_caps** %40, align 8
  %42 = getelementptr inbounds %struct.at91_adc_caps, %struct.at91_adc_caps* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %45 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 4
  %46 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %47 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %50 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 8
  %51 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %52 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %55 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %57 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %60 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %62 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %61, i32 0, i32 1
  %63 = load %struct.at91_adc_caps*, %struct.at91_adc_caps** %62, align 8
  %64 = getelementptr inbounds %struct.at91_adc_caps, %struct.at91_adc_caps* %63, i32 0, i32 0
  %65 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %66 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  %67 = load %struct.at91_adc_data*, %struct.at91_adc_data** %6, align 8
  %68 = getelementptr inbounds %struct.at91_adc_data, %struct.at91_adc_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %71 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %16, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
