; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_enum_clients_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_enum_clients_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32, i32, i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_host_enum_request = type { i32, i32 }

@HOST_ENUM_REQ_CMD = common dso_local global i32 0, align 4
@ISHTP_DEV_RESETTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"enumeration request send failed\0A\00", align 1
@ISHTP_HBM_ENUM_CLIENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_hbm_enum_clients_req(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca %struct.ishtp_msg_hdr, align 4
  %4 = alloca %struct.hbm_host_enum_request, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %5 = bitcast %struct.hbm_host_enum_request* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 8, i1 false)
  %6 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %3, i32 8)
  %7 = load i32, i32* @HOST_ENUM_REQ_CMD, align 4
  %8 = getelementptr inbounds %struct.hbm_host_enum_request, %struct.hbm_host_enum_request* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %10 = call i64 @ishtp_write_message(%struct.ishtp_device* %9, %struct.ishtp_msg_hdr* %3, %struct.hbm_host_enum_request* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @ISHTP_DEV_RESETTING, align 4
  %14 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %15 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %17 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %21 = call i32 @ish_hw_reset(%struct.ishtp_device* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load i32, i32* @ISHTP_HBM_ENUM_CLIENTS, align 4
  %24 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %25 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i32) #2

declare dso_local i64 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_host_enum_request*) #2

declare dso_local i32 @dev_err(i32, i8*) #2

declare dso_local i32 @ish_hw_reset(%struct.ishtp_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
