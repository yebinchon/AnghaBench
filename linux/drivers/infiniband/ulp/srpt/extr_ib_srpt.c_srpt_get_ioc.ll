; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_ioc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_get_ioc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srpt_port = type { %struct.TYPE_7__, %struct.srpt_device* }
%struct.TYPE_7__ = type { i32 }
%struct.srpt_device = type { i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.ib_dm_mad = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i8* }
%struct.ib_dm_ioc_profile = type { i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@DM_MAD_STATUS_INVALID_FIELD = common dso_local global i32 0, align 4
@DM_MAD_STATUS_NO_IOC = common dso_local global i32 0, align 4
@MAX_SRPT_RQ_SIZE = common dso_local global i32 0, align 4
@SRPT_ID_STRING = common dso_local global i32 0, align 4
@srpt_service_guid = common dso_local global i32 0, align 4
@SRP_REV16A_IB_IO_CLASS = common dso_local global i32 0, align 4
@SRP_IO_SUBCLASS = common dso_local global i32 0, align 4
@SRP_PROTOCOL = common dso_local global i32 0, align 4
@SRP_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@srp_max_req_size = common dso_local global i32 0, align 4
@SRP_SEND_TO_IOC = common dso_local global i32 0, align 4
@SRP_SEND_FROM_IOC = common dso_local global i32 0, align 4
@SRP_RDMA_READ_FROM_IOC = common dso_local global i32 0, align 4
@SRP_RDMA_WRITE_FROM_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srpt_port*, i32, %struct.ib_dm_mad*)* @srpt_get_ioc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srpt_get_ioc(%struct.srpt_port* %0, i32 %1, %struct.ib_dm_mad* %2) #0 {
  %4 = alloca %struct.srpt_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_dm_mad*, align 8
  %7 = alloca %struct.srpt_device*, align 8
  %8 = alloca %struct.ib_dm_ioc_profile*, align 8
  %9 = alloca i32, align 4
  store %struct.srpt_port* %0, %struct.srpt_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.ib_dm_mad* %2, %struct.ib_dm_mad** %6, align 8
  %10 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %11 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %10, i32 0, i32 1
  %12 = load %struct.srpt_device*, %struct.srpt_device** %11, align 8
  store %struct.srpt_device* %12, %struct.srpt_device** %7, align 8
  %13 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %14 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ib_dm_ioc_profile*
  store %struct.ib_dm_ioc_profile* %16, %struct.ib_dm_ioc_profile** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 16
  br i1 %21, label %22, label %28

22:                                               ; preds = %19, %3
  %23 = load i32, i32* @DM_MAD_STATUS_INVALID_FIELD, align 4
  %24 = call i8* @cpu_to_be16(i32 %23)
  %25 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %26 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  br label %153

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i32, i32* @DM_MAD_STATUS_NO_IOC, align 4
  %33 = call i8* @cpu_to_be16(i32 %32)
  %34 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %35 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store i8* %33, i8** %36, align 8
  br label %153

37:                                               ; preds = %28
  %38 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %39 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %44 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %9, align 4
  br label %55

46:                                               ; preds = %37
  %47 = load i32, i32* @MAX_SRPT_RQ_SIZE, align 4
  %48 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %49 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min(i32 %47, i32 %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %57 = call i32 @memset(%struct.ib_dm_ioc_profile* %56, i32 0, i32 112)
  %58 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %59 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %58, i32 0, i32 16
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SRPT_ID_STRING, align 4
  %62 = call i32 @strcpy(i32 %60, i32 %61)
  %63 = load i32, i32* @srpt_service_guid, align 4
  %64 = call i32 @cpu_to_be64(i32 %63)
  %65 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %66 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %65, i32 0, i32 15
  store i32 %64, i32* %66, align 8
  %67 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %68 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %75 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %74, i32 0, i32 14
  store i8* %73, i8** %75, align 8
  %76 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %77 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @cpu_to_be32(i32 %81)
  %83 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %84 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %83, i32 0, i32 13
  store i8* %82, i8** %84, align 8
  %85 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %86 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @cpu_to_be16(i32 %90)
  %92 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %93 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %92, i32 0, i32 12
  store i8* %91, i8** %93, align 8
  %94 = load %struct.srpt_device*, %struct.srpt_device** %7, align 8
  %95 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @cpu_to_be32(i32 %99)
  %101 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %102 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %101, i32 0, i32 11
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %104 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load i32, i32* @SRP_REV16A_IB_IO_CLASS, align 4
  %106 = call i8* @cpu_to_be16(i32 %105)
  %107 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %108 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %107, i32 0, i32 10
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* @SRP_IO_SUBCLASS, align 4
  %110 = call i8* @cpu_to_be16(i32 %109)
  %111 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %112 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %111, i32 0, i32 9
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @SRP_PROTOCOL, align 4
  %114 = call i8* @cpu_to_be16(i32 %113)
  %115 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %116 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %115, i32 0, i32 8
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @SRP_PROTOCOL_VERSION, align 4
  %118 = call i8* @cpu_to_be16(i32 %117)
  %119 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %120 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %119, i32 0, i32 7
  store i8* %118, i8** %120, align 8
  %121 = load i32, i32* %9, align 4
  %122 = call i8* @cpu_to_be16(i32 %121)
  %123 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %124 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %123, i32 0, i32 6
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %126 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %125, i32 0, i32 1
  store i32 4, i32* %126, align 4
  %127 = load i32, i32* @srp_max_req_size, align 4
  %128 = call i8* @cpu_to_be32(i32 %127)
  %129 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %130 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %129, i32 0, i32 5
  store i8* %128, i8** %130, align 8
  %131 = load %struct.srpt_port*, %struct.srpt_port** %4, align 8
  %132 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @min(i32 %134, i32 16777216)
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %138 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %137, i32 0, i32 4
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %140 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %139, i32 0, i32 2
  store i32 1, i32* %140, align 8
  %141 = load i32, i32* @SRP_SEND_TO_IOC, align 4
  %142 = load i32, i32* @SRP_SEND_FROM_IOC, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @SRP_RDMA_READ_FROM_IOC, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @SRP_RDMA_WRITE_FROM_IOC, align 4
  %147 = or i32 %145, %146
  %148 = load %struct.ib_dm_ioc_profile*, %struct.ib_dm_ioc_profile** %8, align 8
  %149 = getelementptr inbounds %struct.ib_dm_ioc_profile, %struct.ib_dm_ioc_profile* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 4
  %150 = load %struct.ib_dm_mad*, %struct.ib_dm_mad** %6, align 8
  %151 = getelementptr inbounds %struct.ib_dm_mad, %struct.ib_dm_mad* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  store i8* null, i8** %152, align 8
  br label %153

153:                                              ; preds = %55, %31, %22
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memset(%struct.ib_dm_ioc_profile*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
