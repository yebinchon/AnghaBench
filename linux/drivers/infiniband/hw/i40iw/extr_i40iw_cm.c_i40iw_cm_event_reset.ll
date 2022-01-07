; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_event_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_cm_event_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_event = type { %struct.i40iw_cm_node* }
%struct.i40iw_cm_node = type { %struct.iw_cm_id*, i32 }
%struct.iw_cm_id = type { %struct.i40iw_qp* }
%struct.i40iw_qp = type { i32* }

@I40IW_DEBUG_CM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"reset event %p - cm_id = %p\0A\00", align 1
@IW_CM_EVENT_DISCONNECT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@IW_CM_EVENT_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_event*)* @i40iw_cm_event_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_cm_event_reset(%struct.i40iw_cm_event* %0) #0 {
  %2 = alloca %struct.i40iw_cm_event*, align 8
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca %struct.iw_cm_id*, align 8
  %5 = alloca %struct.i40iw_qp*, align 8
  store %struct.i40iw_cm_event* %0, %struct.i40iw_cm_event** %2, align 8
  %6 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %7 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %6, i32 0, i32 0
  %8 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %7, align 8
  store %struct.i40iw_cm_node* %8, %struct.i40iw_cm_node** %3, align 8
  %9 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %9, i32 0, i32 0
  %11 = load %struct.iw_cm_id*, %struct.iw_cm_id** %10, align 8
  store %struct.iw_cm_id* %11, %struct.iw_cm_id** %4, align 8
  %12 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %13 = icmp ne %struct.iw_cm_id* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %16, i32 0, i32 0
  %18 = load %struct.i40iw_qp*, %struct.i40iw_qp** %17, align 8
  store %struct.i40iw_qp* %18, %struct.i40iw_qp** %5, align 8
  %19 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %20 = icmp ne %struct.i40iw_qp* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %48

22:                                               ; preds = %15
  %23 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %24 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @I40IW_DEBUG_CM, align 4
  %27 = load %struct.i40iw_cm_event*, %struct.i40iw_cm_event** %2, align 8
  %28 = getelementptr inbounds %struct.i40iw_cm_event, %struct.i40iw_cm_event* %27, i32 0, i32 0
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %28, align 8
  %30 = load %struct.iw_cm_id*, %struct.iw_cm_id** %4, align 8
  %31 = call i32 @i40iw_debug(i32 %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.i40iw_cm_node* %29, %struct.iw_cm_id* %30)
  %32 = load %struct.i40iw_qp*, %struct.i40iw_qp** %5, align 8
  %33 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %35 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %36 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %35, i32 0, i32 0
  %37 = load %struct.iw_cm_id*, %struct.iw_cm_id** %36, align 8
  %38 = load i32, i32* @IW_CM_EVENT_DISCONNECT, align 4
  %39 = load i32, i32* @ECONNRESET, align 4
  %40 = sub nsw i32 0, %39
  %41 = call i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %34, %struct.iw_cm_id* %37, i32 %38, i32 %40)
  %42 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %43 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %44 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %43, i32 0, i32 0
  %45 = load %struct.iw_cm_id*, %struct.iw_cm_id** %44, align 8
  %46 = load i32, i32* @IW_CM_EVENT_CLOSE, align 4
  %47 = call i32 @i40iw_send_cm_event(%struct.i40iw_cm_node* %42, %struct.iw_cm_id* %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %22, %21, %14
  ret void
}

declare dso_local i32 @i40iw_debug(i32, i32, i8*, %struct.i40iw_cm_node*, %struct.iw_cm_id*) #1

declare dso_local i32 @i40iw_send_cm_event(%struct.i40iw_cm_node*, %struct.iw_cm_id*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
