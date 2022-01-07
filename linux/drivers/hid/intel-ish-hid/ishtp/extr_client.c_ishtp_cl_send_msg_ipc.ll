; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_send_msg_ipc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_send_msg_ipc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i32 }
%struct.ishtp_cl = type { i64, i64, i32, i64 }

@CL_TX_PATH_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ishtp_device*, %struct.ishtp_cl*)* @ishtp_cl_send_msg_ipc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ishtp_cl_send_msg_ipc(%struct.ishtp_device* %0, %struct.ishtp_cl* %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store %struct.ishtp_cl* %1, %struct.ishtp_cl** %4, align 8
  %5 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %6 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CL_TX_PATH_DMA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %12 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %25

16:                                               ; preds = %10, %2
  %17 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %18 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %20 = call i32 @ipc_tx_callback(%struct.ishtp_cl* %19)
  %21 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %22 = getelementptr inbounds %struct.ishtp_cl, %struct.ishtp_cl* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ipc_tx_callback(%struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
