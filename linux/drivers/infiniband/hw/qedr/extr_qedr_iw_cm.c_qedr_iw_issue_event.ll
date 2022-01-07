; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_issue_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_issue_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.qedr_iw_ep = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)* }
%struct.iw_cm_event = type { i32, i8*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_iwarp_cm_event_params*, i32)* @qedr_iw_issue_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iw_issue_event(i8* %0, %struct.qed_iwarp_cm_event_params* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_iw_ep*, align 8
  %8 = alloca %struct.iw_cm_event, align 8
  store i8* %0, i8** %4, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %10, %struct.qedr_iw_ep** %7, align 8
  %11 = call i32 @memset(%struct.iw_cm_event* %8, i32 0, i32 32)
  %12 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 5
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %19 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %3
  %23 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %30 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %36 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = load %struct.qed_iwarp_cm_event_params*, %struct.qed_iwarp_cm_event_params** %5, align 8
  %42 = getelementptr inbounds %struct.qed_iwarp_cm_event_params, %struct.qed_iwarp_cm_event_params* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %8, i32 0, i32 1
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %22, %3
  %49 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %50 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %55 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)*, i32 (%struct.TYPE_4__*, %struct.iw_cm_event*)** %57, align 8
  %59 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %7, align 8
  %60 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 %58(%struct.TYPE_4__* %61, %struct.iw_cm_event* %8)
  br label %63

63:                                               ; preds = %53, %48
  ret void
}

declare dso_local i32 @memset(%struct.iw_cm_event*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
