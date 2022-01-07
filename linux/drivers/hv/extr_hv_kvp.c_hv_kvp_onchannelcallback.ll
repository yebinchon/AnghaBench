; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_hv_kvp_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_kvp.c_hv_kvp_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, %struct.hv_kvp_msg*, i32, i64 }
%struct.hv_kvp_msg = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }

@hv_kvp_onchannelcallback.host_negotiatied = internal global i32 0, align 4
@kvp_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i64 0, align 8
@kvp_host_handshake_work = common dso_local global i32 0, align 4
@HV_UTIL_NEGO_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@recv_buffer = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@kvp_versions = common dso_local global i32 0, align 4
@KVP_VER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"KVP IC version %d.%d\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_HOSTMSG_RECEIVED = common dso_local global i64 0, align 8
@kvp_sendkey_work = common dso_local global i32 0, align 4
@kvp_timeout_work = common dso_local global i32 0, align 4
@HV_UTIL_TIMEOUT = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@kvp_poll_wrapper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_kvp_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_kvp_msg*, align 8
  %7 = alloca %struct.icmsg_hdr*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 8
  %12 = load i64, i64* @HVUTIL_READY, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load i32, i32* @hv_kvp_onchannelcallback.host_negotiatied, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  store i32 1, i32* @hv_kvp_onchannelcallback.host_negotiatied, align 4
  %18 = load i32, i32* @HV_UTIL_NEGO_TIMEOUT, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @schedule_delayed_work(i32* @kvp_host_handshake_work, i32 %20)
  br label %22

22:                                               ; preds = %17, %14
  br label %96

23:                                               ; preds = %1
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 8
  %25 = load i64, i64* @HVUTIL_READY, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %96

28:                                               ; preds = %23
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %30 = load i32*, i32** @recv_buffer, align 8
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = mul nsw i32 %31, 4
  %33 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %29, i32* %30, i32 %32, i64* %4, i32* %5)
  %34 = load i64, i64* %4, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %28
  %37 = load i32*, i32** @recv_buffer, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = bitcast i32* %38 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %39, %struct.icmsg_hdr** %7, align 8
  %40 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %41 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %47 = load i32*, i32** @recv_buffer, align 8
  %48 = load i32, i32* @fw_versions, align 4
  %49 = load i32, i32* @FW_VER_COUNT, align 4
  %50 = load i32, i32* @kvp_versions, align 4
  %51 = load i32, i32* @KVP_VER_COUNT, align 4
  %52 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %46, i32* %47, i32 %48, i32 %49, i32 %50, i32 %51, i32* null, i32* %8)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load i32, i32* %8, align 4
  %56 = ashr i32 %55, 16
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, 65535
  %59 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %54, %45
  br label %81

61:                                               ; preds = %36
  %62 = load i32*, i32** @recv_buffer, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 20
  %64 = bitcast i32* %63 to %struct.hv_kvp_msg*
  store %struct.hv_kvp_msg* %64, %struct.hv_kvp_msg** %6, align 8
  %65 = load i64, i64* %4, align 8
  store i64 %65, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 4), align 8
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 3), align 8
  %67 = load %struct.hv_kvp_msg*, %struct.hv_kvp_msg** %6, align 8
  store %struct.hv_kvp_msg* %67, %struct.hv_kvp_msg** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 2), align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 8
  %69 = load i64, i64* @HVUTIL_READY, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %61
  %72 = load i32, i32* @HV_E_FAIL, align 4
  %73 = call i32 @kvp_respond_to_host(i32* null, i32 %72)
  br label %96

74:                                               ; preds = %61
  %75 = load i64, i64* @HVUTIL_HOSTMSG_RECEIVED, align 8
  store i64 %75, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 0), align 8
  %76 = call i32 @schedule_work(i32* @kvp_sendkey_work)
  %77 = load i32, i32* @HV_UTIL_TIMEOUT, align 4
  %78 = load i32, i32* @HZ, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 @schedule_delayed_work(i32* @kvp_timeout_work, i32 %79)
  br label %96

81:                                               ; preds = %60
  %82 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %83 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %88 = load i32*, i32** @recv_buffer, align 8
  %89 = load i64, i64* %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %92 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %87, i32* %88, i64 %89, i32 %90, i32 %91, i32 0)
  store i32 2, i32* @hv_kvp_onchannelcallback.host_negotiatied, align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kvp_transaction, i32 0, i32 1), align 8
  %94 = load i32, i32* @kvp_poll_wrapper, align 4
  %95 = call i32 @hv_poll_channel(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %22, %27, %71, %74, %81, %28
  ret void
}

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @kvp_respond_to_host(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @hv_poll_channel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
