; ModuleID = '/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/greybus/extr_core.c_greybus_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.greybus_driver = type { i32 }
%struct.gb_bundle = type { i32 }
%struct.greybus_bundle_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @greybus_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greybus_match_device(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.greybus_driver*, align 8
  %7 = alloca %struct.gb_bundle*, align 8
  %8 = alloca %struct.greybus_bundle_id*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %9 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %10 = call %struct.greybus_driver* @to_greybus_driver(%struct.device_driver* %9)
  store %struct.greybus_driver* %10, %struct.greybus_driver** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @is_gb_bundle(%struct.device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call %struct.gb_bundle* @to_gb_bundle(%struct.device* %16)
  store %struct.gb_bundle* %17, %struct.gb_bundle** %7, align 8
  %18 = load %struct.gb_bundle*, %struct.gb_bundle** %7, align 8
  %19 = load %struct.greybus_driver*, %struct.greybus_driver** %6, align 8
  %20 = getelementptr inbounds %struct.greybus_driver, %struct.greybus_driver* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle* %18, i32 %21)
  store %struct.greybus_bundle_id* %22, %struct.greybus_bundle_id** %8, align 8
  %23 = load %struct.greybus_bundle_id*, %struct.greybus_bundle_id** %8, align 8
  %24 = icmp ne %struct.greybus_bundle_id* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %25, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.greybus_driver* @to_greybus_driver(%struct.device_driver*) #1

declare dso_local i32 @is_gb_bundle(%struct.device*) #1

declare dso_local %struct.gb_bundle* @to_gb_bundle(%struct.device*) #1

declare dso_local %struct.greybus_bundle_id* @greybus_match_id(%struct.gb_bundle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
