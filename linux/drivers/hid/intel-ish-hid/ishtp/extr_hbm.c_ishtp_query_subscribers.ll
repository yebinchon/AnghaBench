; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_query_subscribers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_hbm.c_ishtp_query_subscribers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }
%struct.ishtp_msg_hdr = type { i32 }
%struct.ish_system_states_query_subscribers = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ISHTP_SYSTEM_STATE_CLIENT_ADDR = common dso_local global i32 0, align 4
@SYSTEM_STATE_QUERY_SUBSCRIBERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_query_subscribers(%struct.ishtp_device* %0) #0 {
  %2 = alloca %struct.ishtp_device*, align 8
  %3 = alloca %struct.ishtp_msg_hdr, align 4
  %4 = alloca %struct.ish_system_states_query_subscribers, align 4
  %5 = alloca i64, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %2, align 8
  store i64 4, i64* %5, align 8
  %6 = load i32, i32* @ISHTP_SYSTEM_STATE_CLIENT_ADDR, align 4
  %7 = call i32 @fix_cl_hdr(%struct.ishtp_msg_hdr* %3, i64 4, i32 %6)
  %8 = call i32 @memset(%struct.ish_system_states_query_subscribers* %4, i32 0, i64 4)
  %9 = load i32, i32* @SYSTEM_STATE_QUERY_SUBSCRIBERS, align 4
  %10 = getelementptr inbounds %struct.ish_system_states_query_subscribers, %struct.ish_system_states_query_subscribers* %4, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.ishtp_device*, %struct.ishtp_device** %2, align 8
  %13 = bitcast %struct.ish_system_states_query_subscribers* %4 to i8*
  %14 = call i32 @ishtp_write_message(%struct.ishtp_device* %12, %struct.ishtp_msg_hdr* %3, i8* %13)
  ret void
}

declare dso_local i32 @fix_cl_hdr(%struct.ishtp_msg_hdr*, i64, i32) #1

declare dso_local i32 @memset(%struct.ish_system_states_query_subscribers*, i32, i64) #1

declare dso_local i32 @ishtp_write_message(%struct.ishtp_device*, %struct.ishtp_msg_hdr*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
