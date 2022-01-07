; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_setup_channel_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_channel_mgmt.c_vmbus_setup_channel_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32, i32, i32, i32 }
%struct.vmbus_channel_offer_channel = type { i64, i64, i32 }

@VMBUS_EVENT_CONNECTION_ID = common dso_local global i32 0, align 4
@vmbus_proto_version = common dso_local global i64 0, align 8
@VERSION_WS2008 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, %struct.vmbus_channel_offer_channel*)* @vmbus_setup_channel_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_setup_channel_state(%struct.vmbus_channel* %0, %struct.vmbus_channel_offer_channel* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_channel_offer_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel_offer_channel* %1, %struct.vmbus_channel_offer_channel** %4, align 8
  %5 = load i32, i32* @VMBUS_EVENT_CONNECTION_ID, align 4
  %6 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %7 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 4
  %8 = load i64, i64* @vmbus_proto_version, align 8
  %9 = load i64, i64* @VERSION_WS2008, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %4, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %4, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %23 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %11, %2
  %25 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %26 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %25, i32 0, i32 3
  %27 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %4, align 8
  %28 = call i32 @memcpy(i32* %26, %struct.vmbus_channel_offer_channel* %27, i32 24)
  %29 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %4, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = sdiv i32 %32, 32
  %34 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %35 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.vmbus_channel_offer_channel*, %struct.vmbus_channel_offer_channel** %4, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel_offer_channel, %struct.vmbus_channel_offer_channel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = srem i32 %39, 32
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.vmbus_channel_offer_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
