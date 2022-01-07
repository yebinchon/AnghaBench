; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_dev_match_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/arm_scmi/extr_bus.c_scmi_dev_match_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scmi_device_id = type { i64 }
%struct.scmi_device = type { i64 }
%struct.scmi_driver = type { %struct.scmi_device_id* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.scmi_device_id* (%struct.scmi_device*, %struct.scmi_driver*)* @scmi_dev_match_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.scmi_device_id* @scmi_dev_match_id(%struct.scmi_device* %0, %struct.scmi_driver* %1) #0 {
  %3 = alloca %struct.scmi_device_id*, align 8
  %4 = alloca %struct.scmi_device*, align 8
  %5 = alloca %struct.scmi_driver*, align 8
  %6 = alloca %struct.scmi_device_id*, align 8
  store %struct.scmi_device* %0, %struct.scmi_device** %4, align 8
  store %struct.scmi_driver* %1, %struct.scmi_driver** %5, align 8
  %7 = load %struct.scmi_driver*, %struct.scmi_driver** %5, align 8
  %8 = getelementptr inbounds %struct.scmi_driver, %struct.scmi_driver* %7, i32 0, i32 0
  %9 = load %struct.scmi_device_id*, %struct.scmi_device_id** %8, align 8
  store %struct.scmi_device_id* %9, %struct.scmi_device_id** %6, align 8
  %10 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  %11 = icmp ne %struct.scmi_device_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.scmi_device_id* null, %struct.scmi_device_id** %3, align 8
  br label %34

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %30, %13
  %15 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  %16 = getelementptr inbounds %struct.scmi_device_id, %struct.scmi_device_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  %21 = getelementptr inbounds %struct.scmi_device_id, %struct.scmi_device_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.scmi_device*, %struct.scmi_device** %4, align 8
  %24 = getelementptr inbounds %struct.scmi_device, %struct.scmi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  store %struct.scmi_device_id* %28, %struct.scmi_device_id** %3, align 8
  br label %34

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.scmi_device_id*, %struct.scmi_device_id** %6, align 8
  %32 = getelementptr inbounds %struct.scmi_device_id, %struct.scmi_device_id* %31, i32 1
  store %struct.scmi_device_id* %32, %struct.scmi_device_id** %6, align 8
  br label %14

33:                                               ; preds = %14
  store %struct.scmi_device_id* null, %struct.scmi_device_id** %3, align 8
  br label %34

34:                                               ; preds = %33, %27, %12
  %35 = load %struct.scmi_device_id*, %struct.scmi_device_id** %3, align 8
  ret %struct.scmi_device_id* %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
