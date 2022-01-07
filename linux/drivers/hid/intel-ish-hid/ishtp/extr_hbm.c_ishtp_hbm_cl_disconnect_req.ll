; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_cl_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_hbm_cl_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }
%struct.ishtp_cl = type { i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.hbm_client_connect_request = type { i32 }

@CLIENT_DISCONNECT_REQ_CMD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ishtp_hbm_cl_disconnect_req(%struct.ishtp_device* %0, %struct.ishtp_cl* %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  %5 = alloca %struct.ishtp_msg_hdr, align 4
  %6 = alloca %struct.hbm_client_connect_request, align 4
  %7 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store %struct.ishtp_cl* %1, %struct.ishtp_cl** %4, align 8
  store i64 4, i64* %7, align 8
  %8 = call i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr* %5, i64 4)
  %9 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %10 = load i32, i32* @CLIENT_DISCONNECT_REQ_CMD, align 4
  %11 = call i32 @ishtp_hbm_cl_hdr(%struct.ishtp_cl* %9, i32 %10, %struct.hbm_client_connect_request* %6, i64 4)
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %13 = call i32 @ishtp_write_message(%struct.ishtp_device* %12, %struct.ishtp_msg_hdr* %5, %struct.hbm_client_connect_request* %6)
  ret i32 %13
}

declare dso_local i32 @ishtp_hbm_hdr(%struct.ishtp_msg_hdr*, i64) #1

declare dso_local i32 @ishtp_hbm_cl_hdr(%struct.ishtp_cl*, i32, %struct.hbm_client_connect_request*, i64) #1

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, %struct.hbm_client_connect_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
