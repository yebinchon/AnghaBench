; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_mpa_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_mpa_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { i32 }
%struct.qedr_iw_ep = type { %struct.qedr_dev* }
%struct.qedr_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.qed_iwarp_send_rtr_in*)* }
%struct.qed_iwarp_send_rtr_in = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.qed_iwarp_cm_event_params*)* @qedr_iw_mpa_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_iw_mpa_reply(i8* %0, %struct.qed_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qedr_iw_ep*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qed_iwarp_send_rtr_in, align 4
  store i8* %0, i8** %3, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %9, %struct.qedr_iw_ep** %5, align 8
  %10 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %11 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %10, i32 0, i32 0
  %12 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  store %struct.qedr_dev* %12, %struct.qedr_dev** %6, align 8
  %13 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %14 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.qed_iwarp_send_rtr_in, %struct.qed_iwarp_send_rtr_in* %7, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %18 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.qed_iwarp_send_rtr_in*)*, i32 (i32, %struct.qed_iwarp_send_rtr_in*)** %20, align 8
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %23 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 %21(i32 %24, %struct.qed_iwarp_send_rtr_in* %7)
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
