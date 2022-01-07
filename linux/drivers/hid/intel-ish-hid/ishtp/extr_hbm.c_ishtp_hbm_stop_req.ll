; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_stop_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_stop_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_host_stop_request = type { i32, i32, i32 }

@HOST_STOP_REQ_CMD = common dso_local global i32 0, align 4
@DRIVER_STOP_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_device*)* @ishtp_hbm_stop_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_hbm_stop_req(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca %struct.ishtp_msg_hdr, align 4
  %4 = alloca %struct.hbm_host_stop_request, align 4
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  %5 = bitcast %struct.hbm_host_stop_request* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 12, i1 false)
  %6 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %3, i32 12)
  %7 = load i32, i32* @HOST_STOP_REQ_CMD, align 4
  %8 = getelementptr inbounds %struct.hbm_host_stop_request, %struct.hbm_host_stop_request* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @DRIVER_STOP_REQUEST, align 4
  %10 = getelementptr inbounds %struct.hbm_host_stop_request, %struct.hbm_host_stop_request* %4, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %12 = call i32 @ishtp_write_message(%struct.ishtp_device* %11, %struct.ishtp_msg_hdr* %3, %struct.hbm_host_stop_request* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i32) #2

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_host_stop_request*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
