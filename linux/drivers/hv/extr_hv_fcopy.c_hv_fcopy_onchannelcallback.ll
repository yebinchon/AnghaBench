; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_hv_fcopy_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_fcopy.c_hv_fcopy_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.hv_fcopy_hdr*, i32, i64 }
%struct.hv_fcopy_hdr = type { i32 }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }

@fcopy_transaction = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@HVUTIL_READY = common dso_local global i64 0, align 8
@recv_buffer = common dso_local global i32* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@fcopy_versions = common dso_local global i32 0, align 4
@FCOPY_VER_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"FCopy IC version %d.%d\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@HVUTIL_HOSTMSG_RECEIVED = common dso_local global i64 0, align 8
@fcopy_send_work = common dso_local global i32 0, align 4
@fcopy_timeout_work = common dso_local global i32 0, align 4
@HV_UTIL_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hv_fcopy_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hv_fcopy_hdr*, align 8
  %7 = alloca %struct.icmsg_hdr*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %10, %struct.vmbus_channel** %3, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 0), align 8
  %12 = load i64, i64* @HVUTIL_READY, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = load i32*, i32** @recv_buffer, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = mul nsw i32 %18, 2
  %20 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %16, i32* %17, i32 %19, i64* %4, i32* %5)
  %21 = load i64, i64* %4, align 8
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %81

24:                                               ; preds = %15
  %25 = load i32*, i32** @recv_buffer, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = bitcast i32* %26 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %27, %struct.icmsg_hdr** %7, align 8
  %28 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %35 = load i32*, i32** @recv_buffer, align 8
  %36 = load i32, i32* @fw_versions, align 4
  %37 = load i32, i32* @FW_VER_COUNT, align 4
  %38 = load i32, i32* @fcopy_versions, align 4
  %39 = load i32, i32* @FCOPY_VER_COUNT, align 4
  %40 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %34, i32* %35, i32 %36, i32 %37, i32 %38, i32 %39, i32* null, i32* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* %8, align 4
  %44 = ashr i32 %43, 16
  %45 = load i32, i32* %8, align 4
  %46 = and i32 %45, 65535
  %47 = call i32 @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %33
  br label %69

49:                                               ; preds = %24
  %50 = load i32*, i32** @recv_buffer, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 20
  %52 = bitcast i32* %51 to %struct.hv_fcopy_hdr*
  store %struct.hv_fcopy_hdr* %52, %struct.hv_fcopy_hdr** %6, align 8
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 3), align 8
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 2), align 8
  %55 = load %struct.hv_fcopy_hdr*, %struct.hv_fcopy_hdr** %6, align 8
  store %struct.hv_fcopy_hdr* %55, %struct.hv_fcopy_hdr** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 1), align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 0), align 8
  %57 = load i64, i64* @HVUTIL_READY, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @HV_E_FAIL, align 4
  %61 = call i32 @fcopy_respond_to_host(i32 %60)
  br label %81

62:                                               ; preds = %49
  %63 = load i64, i64* @HVUTIL_HOSTMSG_RECEIVED, align 8
  store i64 %63, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fcopy_transaction, i32 0, i32 0), align 8
  %64 = call i32 @schedule_work(i32* @fcopy_send_work)
  %65 = load i32, i32* @HV_UTIL_TIMEOUT, align 4
  %66 = load i32, i32* @HZ, align 4
  %67 = mul nsw i32 %65, %66
  %68 = call i32 @schedule_delayed_work(i32* @fcopy_timeout_work, i32 %67)
  br label %81

69:                                               ; preds = %48
  %70 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %71 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %72 = or i32 %70, %71
  %73 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %76 = load i32*, i32** @recv_buffer, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %80 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %75, i32* %76, i64 %77, i32 %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %69, %62, %59, %23, %14
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @fcopy_respond_to_host(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
