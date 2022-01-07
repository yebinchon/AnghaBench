; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_respond_to_host.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_fcopy_respond_to_host.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.vmbus_channel*, i32 }
%struct.vmbus_channel = type { i32* }
%struct.icmsg_hdr = type { i32, i32 }

@fcopy_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@recv_buffer = common dso_local global i32* null, align 8
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fcopy_respond_to_host to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcopy_respond_to_host(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.icmsg_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 2), align 8
  store i32 %7, i32* %4, align 4
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 1), align 8
  store %struct.vmbus_channel* %8, %struct.vmbus_channel** %5, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 0), align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32*, i32** @recv_buffer, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 4
  %12 = bitcast i32* %11 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %12, %struct.icmsg_hdr** %3, align 8
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %3, align 8
  %21 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %23 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %3, align 8
  %26 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %28 = load i32*, i32** @recv_buffer, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %32 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %27, i32* %28, i32 %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
