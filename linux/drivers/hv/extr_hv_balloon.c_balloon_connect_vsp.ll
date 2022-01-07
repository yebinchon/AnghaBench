; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_connect_vsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_hv_balloon.c_balloon_connect_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.hv_device = type { i32 }
%struct.dm_version_request = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i8*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.dm_capabilities = type { i32, i64, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, i64 }

@dm_ring_size = common dso_local global i32 0, align 4
@balloon_onchannelcallback = common dso_local global i32 0, align 4
@DM_VERSION_REQUEST = common dso_local global i32 0, align 4
@trans_id = common dso_local global i32 0, align 4
@DYNMEM_PROTOCOL_VERSION_WIN10 = common dso_local global i32 0, align 4
@dm_device = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@VM_PKT_DATA_INBAND = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@DM_INIT_ERROR = common dso_local global i64 0, align 8
@EPROTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Using Dynamic Memory protocol version %u.%u\0A\00", align 1
@DM_CAPABILITIES_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hv_device*)* @balloon_connect_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balloon_connect_vsp(%struct.hv_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hv_device*, align 8
  %4 = alloca %struct.dm_version_request, align 8
  %5 = alloca %struct.dm_capabilities, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hv_device* %0, %struct.hv_device** %3, align 8
  %8 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %9 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @dm_ring_size, align 4
  %12 = load i32, i32* @dm_ring_size, align 4
  %13 = load i32, i32* @balloon_onchannelcallback, align 4
  %14 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %15 = call i32 @vmbus_open(i32 %10, i32 %11, i32 %12, i32* null, i32 0, i32 %13, %struct.hv_device* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %2, align 4
  br label %120

20:                                               ; preds = %1
  %21 = call i32 @memset(%struct.dm_version_request* %4, i32 0, i32 72)
  %22 = load i32, i32* @DM_VERSION_REQUEST, align 4
  %23 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  store i32 72, i32* %26, align 8
  %27 = call i8* @atomic_inc_return(i32* @trans_id)
  %28 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @DYNMEM_PROTOCOL_VERSION_WIN10, align 4
  %31 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 5
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds %struct.dm_version_request, %struct.dm_version_request* %4, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 2), align 4
  %37 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %38 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %41 = call i32 @vmbus_sendpacket(i32 %39, %struct.dm_version_request* %4, i32 72, i64 0, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %20
  br label %114

45:                                               ; preds = %20
  %46 = load i32, i32* @HZ, align 4
  %47 = mul nsw i32 5, %46
  %48 = call i64 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 1), i32 %47)
  store i64 %48, i64* %6, align 8
  %49 = load i64, i64* %6, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @ETIMEDOUT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %114

54:                                               ; preds = %45
  %55 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 0), align 8
  %56 = load i64, i64* @DM_INIT_ERROR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i32, i32* @EPROTO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %114

61:                                               ; preds = %54
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 2), align 4
  %63 = call i32 @DYNMEM_MAJOR_VERSION(i32 %62)
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 2), align 4
  %65 = call i32 @DYNMEM_MINOR_VERSION(i32 %64)
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %65)
  %67 = bitcast %struct.dm_capabilities* %5 to %struct.dm_version_request*
  %68 = call i32 @memset(%struct.dm_version_request* %67, i32 0, i32 72)
  %69 = load i32, i32* @DM_CAPABILITIES_REPORT, align 4
  %70 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  store i32 72, i32* %73, align 8
  %74 = call i8* @atomic_inc_return(i32* @trans_id)
  %75 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  %80 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 7, i32* %85, align 8
  %86 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = getelementptr inbounds %struct.dm_capabilities, %struct.dm_capabilities* %5, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  %88 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %89 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = bitcast %struct.dm_capabilities* %5 to %struct.dm_version_request*
  %92 = load i32, i32* @VM_PKT_DATA_INBAND, align 4
  %93 = call i32 @vmbus_sendpacket(i32 %90, %struct.dm_version_request* %91, i32 72, i64 0, i32 %92, i32 0)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %61
  br label %114

97:                                               ; preds = %61
  %98 = load i32, i32* @HZ, align 4
  %99 = mul nsw i32 5, %98
  %100 = call i64 @wait_for_completion_timeout(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 1), i32 %99)
  store i64 %100, i64* %6, align 8
  %101 = load i64, i64* %6, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @ETIMEDOUT, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %7, align 4
  br label %114

106:                                              ; preds = %97
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @dm_device, i32 0, i32 0), align 8
  %108 = load i64, i64* @DM_INIT_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* @EPROTO, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %7, align 4
  br label %114

113:                                              ; preds = %106
  store i32 0, i32* %2, align 4
  br label %120

114:                                              ; preds = %110, %103, %96, %58, %51, %44
  %115 = load %struct.hv_device*, %struct.hv_device** %3, align 8
  %116 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @vmbus_close(i32 %117)
  %119 = load i32, i32* %7, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %114, %113, %18
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @vmbus_open(i32, i32, i32, i32*, i32, i32, %struct.hv_device*) #1

declare dso_local i32 @memset(%struct.dm_version_request*, i32, i32) #1

declare dso_local i8* @atomic_inc_return(i32*) #1

declare dso_local i32 @vmbus_sendpacket(i32, %struct.dm_version_request*, i32, i64, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @DYNMEM_MAJOR_VERSION(i32) #1

declare dso_local i32 @DYNMEM_MINOR_VERSION(i32) #1

declare dso_local i32 @vmbus_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
