; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_hv_vss_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_snapshot.c_hv_vss_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.hv_vss_msg*, i32, i64 }
%struct.hv_vss_msg = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }

@vss_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i64 0, align 8
@recv_buffer = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@vss_versions = common dso_local global i32 0, align 4
@VSS_VER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"VSS IC version %d.%d\0A\00", align 1
@vss_handle_request_work = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_vss_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_vss_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.icmsg_hdr*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 0), align 8
  %12 = load i64, i64* @HVUTIL_READY, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %68

15:                                               ; preds = %1
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = load i32*, i32** @recv_buffer, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %16, i32* %17, i32 %19, i64* %4, i32* %5)
  %21 = load i64, i64* %4, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %15
  %24 = load i32*, i32** @recv_buffer, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = bitcast i32* %25 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %26, %struct.icmsg_hdr** %8, align 8
  %27 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %8, align 8
  %34 = load i32*, i32** @recv_buffer, align 8
  %35 = load i32, i32* @fw_versions, align 4
  %36 = load i32, i32* @FW_VER_COUNT, align 4
  %37 = load i32, i32* @vss_versions, align 4
  %38 = load i32, i32* @VSS_VER_COUNT, align 4
  %39 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %33, i32* %34, i32 %35, i32 %36, i32 %37, i32 %38, i32* null, i32* %7)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 16
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, 65535
  %46 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %32
  br label %56

48:                                               ; preds = %23
  %49 = load i32*, i32** @recv_buffer, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 20
  %51 = bitcast i32* %50 to %struct.hv_vss_msg*
  store %struct.hv_vss_msg* %51, %struct.hv_vss_msg** %6, align 8
  %52 = load i64, i64* %4, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 3), align 8
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 2), align 8
  %54 = load %struct.hv_vss_msg*, %struct.hv_vss_msg** %6, align 8
  store %struct.hv_vss_msg* %54, %struct.hv_vss_msg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vss_transaction, i32 0, i32 1), align 8
  %55 = call i32 @schedule_work(i32* @vss_handle_request_work)
  br label %68

56:                                               ; preds = %47
  %57 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %58 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %63 = load i32*, i32** @recv_buffer, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %67 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %62, i32* %63, i64 %64, i32 %65, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %14, %48, %56, %15
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
