; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_fin_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_fin_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@I40IW_CM_STATE_LAST_ACK = common dso_local global i32 0, align 4
@I40IW_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@I40IW_CM_STATE_CLOSED = common dso_local global i8* null, align 8
@I40IW_CM_STATE_CLOSING = common dso_local global i32 0, align 4
@I40IW_TIMER_TYPE_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"node %p state = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bad state node %p state = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*)* @i40iw_handle_fin_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_handle_fin_pkt(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca %struct.i40iw_cm_node*, align 8
  %3 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %2, align 8
  %4 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %5 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %92 [
    i32 130, label %7
    i32 129, label %7
    i32 136, label %7
    i32 133, label %7
    i32 132, label %20
    i32 135, label %40
    i32 134, label %53
    i32 128, label %77
    i32 131, label %91
  ]

7:                                                ; preds = %1, %1, %1, %1
  %8 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %14 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %13)
  %15 = load i32, i32* @I40IW_CM_STATE_LAST_ACK, align 4
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %17 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %19 = call i32 @i40iw_send_fin(%struct.i40iw_cm_node* %18)
  br label %98

20:                                               ; preds = %1
  %21 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %22 = load i32, i32* @I40IW_CM_EVENT_ABORTED, align 4
  %23 = call i32 @i40iw_create_event(%struct.i40iw_cm_node* %21, i32 %22)
  %24 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %25 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %30 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %29)
  %31 = load i8*, i8** @I40IW_CM_STATE_CLOSED, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %36 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %35, i32 0, i32 2
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %39 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %38)
  br label %98

40:                                               ; preds = %1
  %41 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %42 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %47 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %46)
  %48 = load i32, i32* @I40IW_CM_STATE_CLOSING, align 4
  %49 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %50 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %52 = call i32 @i40iw_send_ack(%struct.i40iw_cm_node* %51)
  br label %98

53:                                               ; preds = %1
  %54 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %55 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %60 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %59)
  %61 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %62 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %61, i32 0, i32 0
  store i32 128, i32* %62, align 4
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %64 = call i32 @i40iw_send_ack(%struct.i40iw_cm_node* %63)
  %65 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %66 = load i32, i32* @I40IW_TIMER_TYPE_CLOSE, align 4
  %67 = call i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node* %65, i32* null, i32 %66, i32 1, i32 0)
  store i32 %67, i32* %3, align 4
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %53
  %71 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %72 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %73 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.i40iw_cm_node* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %53
  br label %98

77:                                               ; preds = %1
  %78 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %79 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %84 = call i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node* %83)
  %85 = load i8*, i8** @I40IW_CM_STATE_CLOSED, align 8
  %86 = ptrtoint i8* %85 to i32
  %87 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %88 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  %89 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %90 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %89)
  br label %98

91:                                               ; preds = %1
  br label %92

92:                                               ; preds = %1, %91
  %93 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %94 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %95 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @i40iw_pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), %struct.i40iw_cm_node* %93, i32 %96)
  br label %98

98:                                               ; preds = %92, %77, %76, %40, %20, %7
  ret void
}

declare dso_local i32 @i40iw_cleanup_retrans_entry(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_fin(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_create_event(%struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_ack(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_schedule_cm_timer(%struct.i40iw_cm_node*, i32*, i32, i32, i32) #1

declare dso_local i32 @i40iw_pr_err(i8*, %struct.i40iw_cm_node*, i32) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
