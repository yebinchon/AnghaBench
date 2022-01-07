; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_handle_inet_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_ib_main.c_usnic_ib_handle_inet_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_ib_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.in_ifaddr = type { i32 }
%struct.ib_event = type { %struct.TYPE_5__, %struct.TYPE_6__*, i8* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%s via ip notifiers\00", align 1
@IB_EVENT_GID_CHANGE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"%s via ip notifiers: ip %pI4\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Ignoring event %s on %s\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usnic_ib_dev*, i64, i8*)* @usnic_ib_handle_inet_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usnic_ib_handle_inet_event(%struct.usnic_ib_dev* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.usnic_ib_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.in_ifaddr*, align 8
  %8 = alloca %struct.ib_event, align 8
  store %struct.usnic_ib_dev* %0, %struct.usnic_ib_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.in_ifaddr*
  store %struct.in_ifaddr* %10, %struct.in_ifaddr** %7, align 8
  %11 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %12 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %56 [
    i64 129, label %15
    i64 128, label %33
  ]

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @netdev_cmd_to_name(i64 %16)
  %18 = call i32 (i8*, i32, ...) @usnic_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %20 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = call i32 @usnic_fwd_del_ipaddr(%struct.TYPE_7__* %21)
  %23 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %24 = call i32 @usnic_ib_qp_grp_modify_active_to_err(%struct.usnic_ib_dev* %23)
  %25 = load i8*, i8** @IB_EVENT_GID_CHANGE, align 8
  %26 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  store i8* %25, i8** %26, align 8
  %27 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %28 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %29, align 8
  %30 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %64

33:                                               ; preds = %3
  %34 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %35 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load %struct.in_ifaddr*, %struct.in_ifaddr** %7, align 8
  %38 = getelementptr inbounds %struct.in_ifaddr, %struct.in_ifaddr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @usnic_fwd_add_ipaddr(%struct.TYPE_7__* %36, i32 %39)
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @netdev_cmd_to_name(i64 %41)
  %43 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %44 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = call i32 (i8*, i32, ...) @usnic_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32* %46)
  %48 = load i8*, i8** @IB_EVENT_GID_CHANGE, align 8
  %49 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 2
  store i8* %48, i8** %49, align 8
  %50 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %51 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 1
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %52, align 8
  %53 = getelementptr inbounds %struct.ib_event, %struct.ib_event* %8, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = call i32 @ib_dispatch_event(%struct.ib_event* %8)
  br label %64

56:                                               ; preds = %3
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @netdev_cmd_to_name(i64 %57)
  %59 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %60 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32* @dev_name(i32* %61)
  %63 = call i32 (i8*, i32, ...) @usnic_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32* %62)
  br label %64

64:                                               ; preds = %56, %33, %15
  %65 = load %struct.usnic_ib_dev*, %struct.usnic_ib_dev** %4, align 8
  %66 = getelementptr inbounds %struct.usnic_ib_dev, %struct.usnic_ib_dev* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usnic_info(i8*, i32, ...) #1

declare dso_local i32 @netdev_cmd_to_name(i64) #1

declare dso_local i32 @usnic_fwd_del_ipaddr(%struct.TYPE_7__*) #1

declare dso_local i32 @usnic_ib_qp_grp_modify_active_to_err(%struct.usnic_ib_dev*) #1

declare dso_local i32 @ib_dispatch_event(%struct.ib_event*) #1

declare dso_local i32 @usnic_fwd_add_ipaddr(%struct.TYPE_7__*, i32) #1

declare dso_local i32* @dev_name(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
