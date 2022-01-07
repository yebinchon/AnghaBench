; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_close_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_close_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { i32 }
%struct.qedr_iw_ep = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_iwarp_cm_event_params*)* @qedr_iw_close_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iw_close_event(i8* %0, %struct.qed_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qedr_iw_ep*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %7, %struct.qedr_iw_ep** %5, align 8
  %8 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %9 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp ne %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load i8*, i8** %3, align 8
  %14 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %15 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %16 = call i32 @qedr_iw_issue_event(i8* %13, %struct.qed_iwarp_cm_event_params* %14, i32 %15)
  %17 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %18 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %20, align 8
  %22 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %23 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 %21(%struct.TYPE_2__* %24)
  %26 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %27 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %26, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %27, align 8
  br label %28

28:                                               ; preds = %12, %2
  ret void
}

declare dso_local i32 @qedr_iw_issue_event(i8*, %struct.qed_iwarp_cm_event_params*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
