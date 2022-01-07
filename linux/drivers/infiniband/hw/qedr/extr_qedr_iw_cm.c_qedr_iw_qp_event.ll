; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_qp_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_iw_cm.c_qedr_iw_qp_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_cm_event_params = type { i32 }
%struct.qedr_iw_ep = type { %struct.TYPE_4__*, %struct.qedr_dev* }
%struct.TYPE_4__ = type { %struct.ib_qp }
%struct.ib_qp = type { i32, i32 (%struct.ib_event*, i32)*, i32 }
%struct.ib_event = type opaque
%struct.qedr_dev = type { i32 }
%struct.ib_event.0 = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.ib_qp* }

@.str = private unnamed_addr constant [23 x i8] c"QP error received: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_iwarp_cm_event_params*, i32, i8*)* @qedr_iw_qp_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_iw_qp_event(i8* %0, %struct.qed_iwarp_cm_event_params* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.qed_iwarp_cm_event_params*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.qedr_iw_ep*, align 8
  %10 = alloca %struct.qedr_dev*, align 8
  %11 = alloca %struct.ib_qp*, align 8
  %12 = alloca %struct.ib_event.0, align 8
  store i8* %0, i8** %5, align 8
  store %struct.qed_iwarp_cm_event_params* %1, %struct.qed_iwarp_cm_event_params** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.qedr_iw_ep*
  store %struct.qedr_iw_ep* %14, %struct.qedr_iw_ep** %9, align 8
  %15 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %9, align 8
  %16 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %15, i32 0, i32 1
  %17 = load %struct.qedr_dev*, %struct.qedr_dev** %16, align 8
  store %struct.qedr_dev* %17, %struct.qedr_dev** %10, align 8
  %18 = load %struct.qedr_iw_ep*, %struct.qedr_iw_ep** %9, align 8
  %19 = getelementptr inbounds %struct.qedr_iw_ep, %struct.qedr_iw_ep* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.ib_qp* %21, %struct.ib_qp** %11, align 8
  %22 = load %struct.qedr_dev*, %struct.qedr_dev** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @DP_NOTICE(%struct.qedr_dev* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 1
  %27 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.ib_event*, i32)* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %4
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %33 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %37 = getelementptr inbounds %struct.ib_event.0, %struct.ib_event.0* %12, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store %struct.ib_qp* %36, %struct.ib_qp** %38, align 8
  %39 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %40 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %39, i32 0, i32 1
  %41 = load i32 (%struct.ib_event*, i32)*, i32 (%struct.ib_event*, i32)** %40, align 8
  %42 = bitcast %struct.ib_event.0* %12 to %struct.ib_event*
  %43 = load %struct.ib_qp*, %struct.ib_qp** %11, align 8
  %44 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %41(%struct.ib_event* %42, i32 %45)
  br label %47

47:                                               ; preds = %29, %4
  ret void
}

declare dso_local i32 @DP_NOTICE(%struct.qedr_dev*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
