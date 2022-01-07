; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_shutdown_onchannelcallback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_util.c_shutdown_onchannelcallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vmbus_channel = type { i32 }
%struct.shutdown_msg_data = type { i32 }
%struct.icmsg_hdr = type { i64, i32, i32 }

@util_shutdown = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ICMSGTYPE_NEGOTIATE = common dso_local global i64 0, align 8
@fw_versions = common dso_local global i32 0, align 4
@FW_VER_COUNT = common dso_local global i32 0, align 4
@sd_versions = common dso_local global i32 0, align 4
@SD_VER_COUNT = common dso_local global i32 0, align 4
@sd_srv_version = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shutdown IC version %d.%d\0A\00", align 1
@HV_S_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Shutdown request received - graceful shutdown initiated\0A\00", align 1
@HV_E_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Shutdown request received - Invalid request\0A\00", align 1
@ICMSGHDRFLAG_TRANSACTION = common dso_local global i32 0, align 4
@ICMSGHDRFLAG_RESPONSE = common dso_local global i32 0, align 4
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@shutdown_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @shutdown_onchannelcallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown_onchannelcallback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.shutdown_msg_data*, align 8
  %9 = alloca %struct.icmsg_hdr*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.vmbus_channel*
  store %struct.vmbus_channel* %11, %struct.vmbus_channel** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @util_shutdown, i32 0, i32 0), align 8
  store i32* %12, i32** %7, align 8
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = call i32 @vmbus_recvpacket(%struct.vmbus_channel* %13, i32* %14, i32 %15, i64* %4, i32* %5)
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %74

19:                                               ; preds = %1
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  %22 = bitcast i32* %21 to %struct.icmsg_hdr*
  store %struct.icmsg_hdr* %22, %struct.icmsg_hdr** %9, align 8
  %23 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %24 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ICMSGTYPE_NEGOTIATE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %19
  %29 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* @fw_versions, align 4
  %32 = load i32, i32* @FW_VER_COUNT, align 4
  %33 = load i32, i32* @sd_versions, align 4
  %34 = load i32, i32* @SD_VER_COUNT, align 4
  %35 = call i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr* %29, i32* %30, i32 %31, i32 %32, i32 %33, i32 %34, i32* null, i32* @sd_srv_version)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  %38 = load i32, i32* @sd_srv_version, align 4
  %39 = ashr i32 %38, 16
  %40 = load i32, i32* @sd_srv_version, align 4
  %41 = and i32 %40, 65535
  %42 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %37, %28
  br label %62

44:                                               ; preds = %19
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 20
  %47 = bitcast i32* %46 to %struct.shutdown_msg_data*
  store %struct.shutdown_msg_data* %47, %struct.shutdown_msg_data** %8, align 8
  %48 = load %struct.shutdown_msg_data*, %struct.shutdown_msg_data** %8, align 8
  %49 = getelementptr inbounds %struct.shutdown_msg_data, %struct.shutdown_msg_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %56 [
    i32 0, label %51
    i32 1, label %51
  ]

51:                                               ; preds = %44, %44
  %52 = load i32, i32* @HV_S_OK, align 4
  %53 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %54 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  store i32 1, i32* %6, align 4
  %55 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %61

56:                                               ; preds = %44
  %57 = load i32, i32* @HV_E_FAIL, align 4
  %58 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %59 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  store i32 0, i32* %6, align 4
  %60 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %43
  %63 = load i32, i32* @ICMSGHDRFLAG_TRANSACTION, align 4
  %64 = load i32, i32* @ICMSGHDRFLAG_RESPONSE, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.icmsg_hdr*, %struct.icmsg_hdr** %9, align 8
  %67 = getelementptr inbounds %struct.icmsg_hdr, %struct.icmsg_hdr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i64, i64* %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %73 = call i32 @vmbus_sendpacket(%struct.vmbus_channel* %68, i32* %69, i64 %70, i32 %71, i32 %72, i32 0)
  br label %74

74:                                               ; preds = %62, %1
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 @schedule_work(i32* @shutdown_work)
  br label %79

79:                                               ; preds = %77, %74
  ret void
}

declare dso_local i32 @vmbus_recvpacket(%struct.vmbus_channel*, i32*, i32, i64*, i32*) #1

declare dso_local i64 @vmbus_prep_negotiate_resp(%struct.icmsg_hdr*, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @vmbus_sendpacket(%struct.vmbus_channel*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
