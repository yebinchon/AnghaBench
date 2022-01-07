; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_start_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_start_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_host_version_request = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@HOST_START_REQ_CMD = common dso_local global i32 0, align 4
@HBM_MAJOR_VERSION = common dso_local global i32 0, align 4
@HBM_MINOR_VERSION = common dso_local global i32 0, align 4
@ISHTP_HBM_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"version message send failed\0A\00", align 1
@ISHTP_DEV_RESETTING = common dso_local global i32 0, align 4
@ISHTP_HBM_IDLE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_hbm_start_req(%struct.ishtp_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_msg_hdr, align 4
  %5 = alloca %struct.hbm_host_version_request, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  %6 = bitcast %struct.hbm_host_version_request* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %4, i32 16)
  %8 = load i32, i32* @HOST_START_REQ_CMD, align 4
  %9 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @HBM_MAJOR_VERSION, align 4
  %11 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @HBM_MINOR_VERSION, align 4
  %14 = getelementptr inbounds %struct.hbm_host_version_request, %struct.hbm_host_version_request* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @ISHTP_HBM_START, align 4
  %17 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %18 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %20 = call i64 @ishtp_write_message(%struct.ishtp_device* %19, %struct.ishtp_msg_hdr* %4, %struct.hbm_host_version_request* %5)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %24 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ISHTP_DEV_RESETTING, align 4
  %28 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %29 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @ISHTP_HBM_IDLE, align 4
  %31 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %32 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %34 = call i32 @ish_hw_reset(%struct.ishtp_device* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %22
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i32) #2

declare dso_local i64 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_host_version_request*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @ish_hw_reset(%struct.ishtp_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
