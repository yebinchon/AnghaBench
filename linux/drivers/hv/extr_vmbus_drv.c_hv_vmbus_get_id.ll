; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_vmbus_get_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_vmbus_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vmbus_device_id = type { i32 }
%struct.hv_driver = type { i32, i32 }
%struct.hv_device = type { i64, i32 }

@vmbus_device_null = common dso_local global %struct.hv_vmbus_device_id zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hv_vmbus_device_id* (%struct.hv_driver*, %struct.hv_device*)* @hv_vmbus_get_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hv_vmbus_device_id* @hv_vmbus_get_id(%struct.hv_driver* %0, %struct.hv_device* %1) #0 {
  %3 = alloca %struct.hv_vmbus_device_id*, align 8
  %4 = alloca %struct.hv_driver*, align 8
  %5 = alloca %struct.hv_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hv_vmbus_device_id*, align 8
  store %struct.hv_driver* %0, %struct.hv_driver** %4, align 8
  store %struct.hv_device* %1, %struct.hv_device** %5, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %9 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %8, i32 0, i32 1
  store i32* %9, i32** %6, align 8
  %10 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %11 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %16 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %19 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strcmp(i64 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  store %struct.hv_vmbus_device_id* null, %struct.hv_vmbus_device_id** %3, align 8
  br label %47

24:                                               ; preds = %14, %2
  %25 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call %struct.hv_vmbus_device_id* @hv_vmbus_dynid_match(%struct.hv_driver* %25, i32* %26)
  store %struct.hv_vmbus_device_id* %27, %struct.hv_vmbus_device_id** %7, align 8
  %28 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %7, align 8
  %29 = icmp ne %struct.hv_vmbus_device_id* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.hv_driver*, %struct.hv_driver** %4, align 8
  %32 = getelementptr inbounds %struct.hv_driver, %struct.hv_driver* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = call %struct.hv_vmbus_device_id* @hv_vmbus_dev_match(i32 %33, i32* %34)
  store %struct.hv_vmbus_device_id* %35, %struct.hv_vmbus_device_id** %7, align 8
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %7, align 8
  %38 = icmp ne %struct.hv_vmbus_device_id* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.hv_device*, %struct.hv_device** %5, align 8
  %41 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store %struct.hv_vmbus_device_id* @vmbus_device_null, %struct.hv_vmbus_device_id** %7, align 8
  br label %45

45:                                               ; preds = %44, %39, %36
  %46 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %7, align 8
  store %struct.hv_vmbus_device_id* %46, %struct.hv_vmbus_device_id** %3, align 8
  br label %47

47:                                               ; preds = %45, %23
  %48 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %3, align 8
  ret %struct.hv_vmbus_device_id* %48
}

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local %struct.hv_vmbus_device_id* @hv_vmbus_dynid_match(%struct.hv_driver*, i32*) #1

declare dso_local %struct.hv_vmbus_device_id* @hv_vmbus_dev_match(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
