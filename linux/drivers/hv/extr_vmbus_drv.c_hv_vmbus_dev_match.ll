; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_vmbus_dev_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_hv_vmbus_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_vmbus_device_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hv_vmbus_device_id* (%struct.hv_vmbus_device_id*, i32*)* @hv_vmbus_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hv_vmbus_device_id* @hv_vmbus_dev_match(%struct.hv_vmbus_device_id* %0, i32* %1) #0 {
  %3 = alloca %struct.hv_vmbus_device_id*, align 8
  %4 = alloca %struct.hv_vmbus_device_id*, align 8
  %5 = alloca i32*, align 8
  store %struct.hv_vmbus_device_id* %0, %struct.hv_vmbus_device_id** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %7 = icmp eq %struct.hv_vmbus_device_id* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store %struct.hv_vmbus_device_id* null, %struct.hv_vmbus_device_id** %3, align 8
  br label %29

9:                                                ; preds = %2
  br label %10

10:                                               ; preds = %25, %9
  %11 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %12 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %11, i32 0, i32 0
  %13 = call i32 @guid_is_null(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %28

16:                                               ; preds = %10
  %17 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %18 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %17, i32 0, i32 0
  %19 = load i32*, i32** %5, align 8
  %20 = call i64 @guid_equal(i32* %18, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  store %struct.hv_vmbus_device_id* %23, %struct.hv_vmbus_device_id** %3, align 8
  br label %29

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %4, align 8
  %27 = getelementptr inbounds %struct.hv_vmbus_device_id, %struct.hv_vmbus_device_id* %26, i32 1
  store %struct.hv_vmbus_device_id* %27, %struct.hv_vmbus_device_id** %4, align 8
  br label %10

28:                                               ; preds = %10
  store %struct.hv_vmbus_device_id* null, %struct.hv_vmbus_device_id** %3, align 8
  br label %29

29:                                               ; preds = %28, %22, %8
  %30 = load %struct.hv_vmbus_device_id*, %struct.hv_vmbus_device_id** %3, align 8
  ret %struct.hv_vmbus_device_id* %30
}

declare dso_local i32 @guid_is_null(i32*) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
