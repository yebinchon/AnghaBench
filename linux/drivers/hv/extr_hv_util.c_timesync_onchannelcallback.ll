; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_timesync_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_timesync_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)* }
%struct.vmbus_channel = type { i32 }
%struct.icmsg_hdr = type { i64, i32 }
%struct.ictimesync_data = type { i32, i32 }
%struct.ictimesync_ref_data = type { i32, i32, i32 }

@util_timesynch = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@ts_versions = common dso_local global i32 0, align 4
@TS_VER_COUNT = common dso_local global i32 0, align 4
@ts_srv_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"TimeSync IC version %d.%d\0A\00", align 1
@TS_VERSION_3 = common dso_local global i32 0, align 4
@hyperv_cs = common dso_local global %struct.TYPE_5__* null, align 8
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @timesync_onchannelcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timesync_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.icmsg_hdr*, align 8
  %7 = alloca %struct.ictimesync_data*, align 8
  %8 = alloca %struct.ictimesync_ref_data*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %11, %struct.vmbus_channel** %3, align 8
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @util_timesynch, i32 0, i32 0), align 8
  store i32* %12, i32** %9, align 8
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %13, i32* %14, i32 %15, i64* %4, i32* %5)
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %91

19:                                               ; preds = %1
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = bitcast i32* %21 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %22, %struct.icmsg_hdr** %6, align 8
  %23 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %24 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @fw_versions, align 4
  %32 = load i32, i32* @FW_VER_COUNT, align 4
  %33 = load i32, i32* @ts_versions, align 4
  %34 = load i32, i32* @TS_VER_COUNT, align 4
  %35 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %29, i32* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32* null, i32* @ts_srv_version)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @ts_srv_version, align 4
  %39 = ashr i32 %38, 16
  %40 = load i32, i32* @ts_srv_version, align 4
  %41 = and i32 %40, 65535
  %42 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  br label %79

44:                                               ; preds = %19
  %45 = load i32, i32* @ts_srv_version, align 4
  %46 = load i32, i32* @TS_VERSION_3, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 20
  %51 = bitcast i32* %50 to %struct.ictimesync_ref_data*
  store %struct.ictimesync_ref_data* %51, %struct.ictimesync_ref_data** %8, align 8
  %52 = load %struct.ictimesync_ref_data*, %struct.ictimesync_ref_data** %8, align 8
  %53 = getelementptr inbounds %struct.ictimesync_ref_data, %struct.ictimesync_ref_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ictimesync_ref_data*, %struct.ictimesync_ref_data** %8, align 8
  %56 = getelementptr inbounds %struct.ictimesync_ref_data, %struct.ictimesync_ref_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ictimesync_ref_data*, %struct.ictimesync_ref_data** %8, align 8
  %59 = getelementptr inbounds %struct.ictimesync_ref_data, %struct.ictimesync_ref_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @adj_guesttime(i32 %54, i32 %57, i32 %60)
  br label %78

62:                                               ; preds = %44
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 20
  %65 = bitcast i32* %64 to %struct.ictimesync_data*
  store %struct.ictimesync_data* %65, %struct.ictimesync_data** %7, align 8
  %66 = load %struct.ictimesync_data*, %struct.ictimesync_data** %7, align 8
  %67 = getelementptr inbounds %struct.ictimesync_data, %struct.ictimesync_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hyperv_cs, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %70, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hyperv_cs, align 8
  %73 = call i32 %71(%struct.TYPE_5__* %72)
  %74 = load %struct.ictimesync_data*, %struct.ictimesync_data** %7, align 8
  %75 = getelementptr inbounds %struct.ictimesync_data, %struct.ictimesync_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @adj_guesttime(i32 %68, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %62, %48
  br label %79

79:                                               ; preds = %78, %43
  %80 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %81 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %6, align 8
  %84 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 8
  %85 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %4, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %90 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %85, i32* %86, i64 %87, i32 %88, i32 %89, i32 0)
  br label %91

91:                                               ; preds = %79, %1
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @adj_guesttime(i32, i32, i32) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
