; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/intel-ish-hid/ishtp/extr_client.c_ishtp_cl_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ishtp_device = type { i64 }
%struct.ishtp_cl = type { i32 }

@CL_TX_PATH_DMA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ishtp_cl_send_msg(%struct.ishtp_device* %0, %struct.ishtp_cl* %1) #0 {
  %3 = alloca %struct.ishtp_device*, align 8
  %4 = alloca %struct.ishtp_cl*, align 8
  store %struct.ishtp_device* %0, %struct.ishtp_device** %3, align 8
  store %struct.ishtp_cl* %1, %struct.ishtp_cl** %4, align 8
  %5 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %6 = getelementptr inbounds %struct.ishtp_device, %struct.ishtp_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CL_TX_PATH_DMA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %12 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %13 = call i32 @ishtp_cl_send_msg_dma(%struct.ishtp_device* %11, %struct.ishtp_cl* %12)
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.ishtp_device*, %struct.ishtp_device** %3, align 8
  %16 = load %struct.ishtp_cl*, %struct.ishtp_cl** %4, align 8
  %17 = call i32 @ishtp_cl_send_msg_ipc(%struct.ishtp_device* %15, %struct.ishtp_cl* %16)
  br label %18

18:                                               ; preds = %14, %10
  ret void
}

declare dso_local i32 @ishtp_cl_send_msg_dma(%struct.ishtp_device*, %struct.ishtp_cl*) #1

declare dso_local i32 @ishtp_cl_send_msg_ipc(%struct.ishtp_device*, %struct.ishtp_cl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
