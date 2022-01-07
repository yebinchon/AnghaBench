; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_event_connect_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_event_connect_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_event = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)*, %struct.i40iw_qp* }
%struct.i40iw_qp = type { i32*, i32 }

@IW_CM_EVENT_CONNECT_REPLY = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_event*)* @i40iw_event_connect_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_event_connect_error(%struct.i40iw_cm_event* %0) #0 {
  %2 = alloca %struct.i40iw_cm_event*, align 8
  %3 = alloca %struct.i40iw_qp*, align 8
  %4 = alloca %struct.iw_cm_id*, align 8
  store %struct.i40iw_cm_event* %0, %struct.i40iw_cm_event** %2, align 8
  %5 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.iw_cm_id*, %struct.iw_cm_id** %8, align 8
  store %struct.iw_cm_id* %9, %struct.iw_cm_id** %4, align 8
  %10 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %11 = icmp ne %struct.iw_cm_id* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %15 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %14, i32 0, i32 1
  %16 = load %struct.i40iw_qp*, %struct.i40iw_qp** %15, align 8
  store %struct.i40iw_qp* %16, %struct.i40iw_qp** %3, align 8
  %17 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %18 = icmp ne %struct.i40iw_qp* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %21 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %13
  br label %47

25:                                               ; preds = %19
  %26 = load %struct.i40iw_qp*, %struct.i40iw_qp** %3, align 8
  %27 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %29 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %28, i32 0, i32 1
  store %struct.i40iw_qp* null, %struct.i40iw_qp** %29, align 8
  %30 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %31 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %34 = load i32, i32* @IW_CM_EVENT_CONNECT_REPLY, align 4
  %35 = load i32, i32* @ECONNRESET, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @i40iw_send_cm_event(%struct.TYPE_3__* %32, %struct.iw_cm_id* %33, i32 %34, i32 %36)
  %38 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %39 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %38, i32 0, i32 0
  %40 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %39, align 8
  %41 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %42 = call i32 %40(%struct.iw_cm_id* %41)
  %43 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %44 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i32 @i40iw_rem_ref_cm_node(%struct.TYPE_3__* %45)
  br label %47

47:                                               ; preds = %25, %24, %12
  ret void
}

declare dso_local i32 @i40iw_send_cm_event(%struct.TYPE_3__*, %struct.iw_cm_id*, i32, i32) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
