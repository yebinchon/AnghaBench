; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_twi_get_driver_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-at91-core.c_at91_twi_get_driver_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_twi_pdata = type { i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.of_device_id = type { i64 }
%struct.TYPE_4__ = type { i64 }

@atmel_twi_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.at91_twi_pdata* (%struct.platform_device*)* @at91_twi_get_driver_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.at91_twi_pdata* @at91_twi_get_driver_data(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.at91_twi_pdata*, align 8
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load i32, i32* @atmel_twi_dt_ids, align 4
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.of_device_id* @of_match_node(i32 %11, i64 %15)
  store %struct.of_device_id* %16, %struct.of_device_id** %4, align 8
  %17 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %18 = icmp ne %struct.of_device_id* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  store %struct.at91_twi_pdata* null, %struct.at91_twi_pdata** %2, align 8
  br label %31

20:                                               ; preds = %10
  %21 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.at91_twi_pdata*
  store %struct.at91_twi_pdata* %24, %struct.at91_twi_pdata** %2, align 8
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = call %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.at91_twi_pdata*
  store %struct.at91_twi_pdata* %30, %struct.at91_twi_pdata** %2, align 8
  br label %31

31:                                               ; preds = %25, %20, %19
  %32 = load %struct.at91_twi_pdata*, %struct.at91_twi_pdata** %2, align 8
  ret %struct.at91_twi_pdata* %32
}

declare dso_local %struct.of_device_id* @of_match_node(i32, i64) #1

declare dso_local %struct.TYPE_4__* @platform_get_device_id(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
