; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_dev_attr_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_dev_attr_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.attribute }
%struct.attribute = type { i32 }
%struct.TYPE_12__ = type { %struct.attribute }
%struct.TYPE_16__ = type { %struct.attribute }
%struct.TYPE_13__ = type { %struct.attribute }
%struct.TYPE_17__ = type { %struct.attribute }
%struct.TYPE_14__ = type { %struct.attribute }
%struct.TYPE_18__ = type { %struct.attribute }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.hv_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@dev_attr_monitor_id = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@dev_attr_server_monitor_pending = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@dev_attr_client_monitor_pending = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@dev_attr_server_monitor_latency = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@dev_attr_client_monitor_latency = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@dev_attr_server_monitor_conn_id = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@dev_attr_client_monitor_conn_id = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.attribute*, i32)* @vmbus_dev_attr_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_dev_attr_is_visible(%struct.kobject* %0, %struct.attribute* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.attribute*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hv_device*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.attribute* %1, %struct.attribute** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.kobject*, %struct.kobject** %5, align 8
  %11 = call %struct.device* @kobj_to_dev(%struct.kobject* %10)
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.device*, %struct.device** %8, align 8
  %13 = call %struct.hv_device* @device_to_hv_device(%struct.device* %12)
  store %struct.hv_device* %13, %struct.hv_device** %9, align 8
  %14 = load %struct.hv_device*, %struct.hv_device** %9, align 8
  %15 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %3
  %22 = load %struct.attribute*, %struct.attribute** %6, align 8
  %23 = icmp eq %struct.attribute* %22, getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @dev_attr_monitor_id, i32 0, i32 0)
  br i1 %23, label %42, label %24

24:                                               ; preds = %21
  %25 = load %struct.attribute*, %struct.attribute** %6, align 8
  %26 = icmp eq %struct.attribute* %25, getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dev_attr_server_monitor_pending, i32 0, i32 0)
  br i1 %26, label %42, label %27

27:                                               ; preds = %24
  %28 = load %struct.attribute*, %struct.attribute** %6, align 8
  %29 = icmp eq %struct.attribute* %28, getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @dev_attr_client_monitor_pending, i32 0, i32 0)
  br i1 %29, label %42, label %30

30:                                               ; preds = %27
  %31 = load %struct.attribute*, %struct.attribute** %6, align 8
  %32 = icmp eq %struct.attribute* %31, getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @dev_attr_server_monitor_latency, i32 0, i32 0)
  br i1 %32, label %42, label %33

33:                                               ; preds = %30
  %34 = load %struct.attribute*, %struct.attribute** %6, align 8
  %35 = icmp eq %struct.attribute* %34, getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dev_attr_client_monitor_latency, i32 0, i32 0)
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.attribute*, %struct.attribute** %6, align 8
  %38 = icmp eq %struct.attribute* %37, getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @dev_attr_server_monitor_conn_id, i32 0, i32 0)
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load %struct.attribute*, %struct.attribute** %6, align 8
  %41 = icmp eq %struct.attribute* %40, getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @dev_attr_client_monitor_conn_id, i32 0, i32 0)
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %36, %33, %30, %27, %24, %21
  store i32 0, i32* %4, align 4
  br label %47

43:                                               ; preds = %39, %3
  %44 = load %struct.attribute*, %struct.attribute** %6, align 8
  %45 = getelementptr inbounds %struct.attribute, %struct.attribute* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.hv_device* @device_to_hv_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
