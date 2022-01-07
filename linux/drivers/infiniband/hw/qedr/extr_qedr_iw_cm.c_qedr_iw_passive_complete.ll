; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_passive_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_passive_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { i32 }
%struct.qedr_iw_ep = type { i32, %struct.qedr_dev* }
%struct.qedr_dev = type { i32 }

@ECONNREFUSED = common dso_local global i32 0, align 4
@QEDR_MSG_IWARP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"PASSIVE connection refused releasing ep...\0A\00", align 1
@IW_CM_EVENT_ESTABLISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_iwarp_cm_event_params*)* @qedr_iw_passive_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iw_passive_complete(i8* %0, %struct.qed_iwarp_cm_event_params* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %5 = alloca %struct.qedr_iw_ep*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %8, %struct.qedr_iw_ep** %5, align 8
  %9 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %10 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %9, i32 0, i32 1
  %11 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  store %struct.qedr_dev* %11, %struct.qedr_dev** %6, align 8
  %12 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ECONNREFUSED, align 4
  %16 = sub nsw i32 0, %15
  %17 = icmp eq i32 %14, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %20 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %25 = load i32, i32* @QEDR_MSG_IWARP, align 4
  %26 = call i32 @DP_DEBUG(%struct.qedr_dev* %24, i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %5, align 8
  %28 = call i32 @kfree(%struct.qedr_iw_ep* %27)
  br label %42

29:                                               ; preds = %18, %2
  %30 = load i8*, i8** %3, align 8
  %31 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %32 = load i32, i32* @IW_CM_EVENT_ESTABLISHED, align 4
  %33 = call i32 @qedr_iw_issue_event(i8* %30, %struct.qed_iwarp_cm_event_params* %31, i32 %32)
  %34 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %4, align 8
  %41 = call i32 @qedr_iw_close_event(i8* %39, %struct.qed_iwarp_cm_event_params* %40)
  br label %42

42:                                               ; preds = %23, %38, %29
  ret void
}

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*) #1

declare dso_local i32 @kfree(%struct.qedr_iw_ep*) #1

declare dso_local i32 @qedr_iw_issue_event(i8*, %struct.qed_iwarp_cm_event_params*, i32) #1

declare dso_local i32 @qedr_iw_close_event(i8*, %struct.qed_iwarp_cm_event_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
