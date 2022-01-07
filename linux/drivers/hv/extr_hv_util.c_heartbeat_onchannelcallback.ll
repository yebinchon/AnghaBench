; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_heartbeat_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_heartbeat_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }
%struct.heartbeat_msg_data = type { i32 }

@util_heartbeat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@hb_versions = common dso_local global i32 0, align 4
@HB_VER_COUNT = common dso_local global i32 0, align 4
@hb_srv_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Heartbeat IC version %d.%d\0A\00", align 1
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @heartbeat_onchannelcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.icmsg_hdr*, align 8
  %7 = alloca %struct.heartbeat_msg_data*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %3, align 8
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @util_heartbeat, i32 0, i32 0), align 8
  store i32* %11, i32** %8, align 8
  br label %12

12:                                               ; preds = %1, %53
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %13, i32* %14, i32 %15, i32* %4, i32* %5)
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %65

20:                                               ; preds = %12
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 4
  %23 = bitcast i32* %22 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %23, %struct.icmsg_hdr** %6, align 8
  %24 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %25 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %20
  %30 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @fw_versions, align 4
  %33 = load i32, i32* @FW_VER_COUNT, align 4
  %34 = load i32, i32* @hb_versions, align 4
  %35 = load i32, i32* @HB_VER_COUNT, align 4
  %36 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %30, i32* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32* null, i32* @hb_srv_version)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load i32, i32* @hb_srv_version, align 4
  %40 = ashr i32 %39, 16
  %41 = load i32, i32* @hb_srv_version, align 4
  %42 = and i32 %41, 65535
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %38, %29
  br label %53

45:                                               ; preds = %20
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 20
  %48 = bitcast i32* %47 to %struct.heartbeat_msg_data*
  store %struct.heartbeat_msg_data* %48, %struct.heartbeat_msg_data** %7, align 8
  %49 = load %struct.heartbeat_msg_data*, %struct.heartbeat_msg_data** %7, align 8
  %50 = getelementptr inbounds %struct.heartbeat_msg_data, %struct.heartbeat_msg_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %45, %44
  %54 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %55 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %58 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %64 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %59, i32* %60, i32 %61, i32 %62, i32 %63, i32 0)
  br label %12

65:                                               ; preds = %19
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i32*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
