; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_convert_voltage_index_to_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_convert_voltage_index_to_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @sumo_convert_voltage_index_to_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sumo_convert_voltage_index_to_value(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sumo_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %8)
  store %struct.sumo_power_info* %9, %struct.sumo_power_info** %6, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %11 = load %struct.sumo_power_info*, %struct.sumo_power_info** %6, align 8
  %12 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @sumo_convert_vid2_to_vid7(%struct.radeon_device* %10, i32* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp sgt i32 %16, 124
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = mul nsw i32 %20, 125
  %22 = sub nsw i32 15500, %21
  %23 = add nsw i32 %22, 5
  %24 = sdiv i32 %23, 10
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %19, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @sumo_convert_vid2_to_vid7(%struct.radeon_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
