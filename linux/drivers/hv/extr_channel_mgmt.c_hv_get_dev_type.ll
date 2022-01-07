; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_hv_get_dev_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_hv_get_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.vmbus_channel = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@HV_UNKNOWN = common dso_local global i64 0, align 8
@HV_IDE = common dso_local global i64 0, align 8
@vmbus_devs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"Unknown GUID: %pUl\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmbus_channel*)* @hv_get_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hv_get_dev_type(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32* %9, i32** %4, align 8
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %11 = call i64 @is_hvsock_channel(%struct.vmbus_channel* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i32*, i32** %4, align 8
  %15 = call i64 @is_unsupported_vmbus_devs(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %1
  %18 = load i64, i64* @HV_UNKNOWN, align 8
  store i64 %18, i64* %2, align 8
  br label %43

19:                                               ; preds = %13
  %20 = load i64, i64* @HV_IDE, align 8
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %36, %19
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @HV_UNKNOWN, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32*, i32** %4, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @vmbus_devs, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = call i64 @guid_equal(i32* %26, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %43

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %5, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %5, align 8
  br label %21

39:                                               ; preds = %21
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %40)
  %42 = load i64, i64* %5, align 8
  store i64 %42, i64* %2, align 8
  br label %43

43:                                               ; preds = %39, %33, %17
  %44 = load i64, i64* %2, align 8
  ret i64 %44
}

declare dso_local i64 @is_hvsock_channel(%struct.vmbus_channel*) #1

declare dso_local i64 @is_unsupported_vmbus_devs(i32*) #1

declare dso_local i64 @guid_equal(i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
