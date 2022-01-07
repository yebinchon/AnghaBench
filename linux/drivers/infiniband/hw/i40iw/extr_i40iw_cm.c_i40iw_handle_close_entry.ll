; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_close_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_handle_close_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { %struct.i40iw_timer_entry*, %struct.iw_cm_id* }
%struct.i40iw_timer_entry = type { i64 }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)* }
%struct.i40iw_qp = type { i32, i32, i32, i32, i32, i64 }

@I40IW_TCP_STATE_CLOSED = common dso_local global i32 0, align 4
@I40IW_QP_STATE_ERROR = common dso_local global i32 0, align 4
@I40IW_AE_RESET_SENT = common dso_local global i32 0, align 4
@IB_QPS_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, i64)* @i40iw_handle_close_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_handle_close_entry(%struct.i40iw_cm_node* %0, i64 %1) #0 {
  %3 = alloca %struct.i40iw_cm_node*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.i40iw_timer_entry*, align 8
  %6 = alloca %struct.iw_cm_id*, align 8
  %7 = alloca %struct.i40iw_qp*, align 8
  %8 = alloca i64, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %10 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %9, i32 0, i32 0
  %11 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %10, align 8
  store %struct.i40iw_timer_entry* %11, %struct.i40iw_timer_entry** %5, align 8
  %12 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %12, i32 0, i32 1
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %13, align 8
  store %struct.iw_cm_id* %14, %struct.iw_cm_id** %6, align 8
  %15 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %5, align 8
  %16 = icmp ne %struct.i40iw_timer_entry* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %5, align 8
  %20 = getelementptr inbounds %struct.i40iw_timer_entry, %struct.i40iw_timer_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.i40iw_qp*
  store %struct.i40iw_qp* %22, %struct.i40iw_qp** %7, align 8
  %23 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %24 = icmp ne %struct.i40iw_qp* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %27 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %26, i32 0, i32 0
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %31 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %25
  %35 = load i32, i32* @I40IW_TCP_STATE_CLOSED, align 4
  %36 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %37 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @I40IW_QP_STATE_ERROR, align 4
  %39 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %40 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @I40IW_AE_RESET_SENT, align 4
  %42 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %43 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @IB_QPS_ERR, align 4
  %45 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %46 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %48 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %47, i32 0, i32 0
  %49 = load i64, i64* %8, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %52 = call i32 @i40iw_cm_disconn(%struct.i40iw_qp* %51)
  br label %58

53:                                               ; preds = %25
  %54 = load %struct.i40iw_qp*, %struct.i40iw_qp** %7, align 8
  %55 = getelementptr inbounds %struct.i40iw_qp, %struct.i40iw_qp* %54, i32 0, i32 0
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32* %55, i64 %56)
  br label %58

58:                                               ; preds = %53, %34
  br label %66

59:                                               ; preds = %18
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %64 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %63)
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %58
  %67 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %68 = icmp ne %struct.iw_cm_id* %67, null
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %71 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %70, i32 0, i32 0
  %72 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %71, align 8
  %73 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  %74 = call i32 %72(%struct.iw_cm_id* %73)
  br label %75

75:                                               ; preds = %69, %66
  %76 = load %struct.i40iw_timer_entry*, %struct.i40iw_timer_entry** %5, align 8
  %77 = call i32 @kfree(%struct.i40iw_timer_entry* %76)
  %78 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %3, align 8
  %79 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %78, i32 0, i32 0
  store %struct.i40iw_timer_entry* null, %struct.i40iw_timer_entry** %79, align 8
  br label %80

80:                                               ; preds = %75, %17
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @i40iw_cm_disconn(%struct.i40iw_qp*) #1

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

declare dso_local i32 @kfree(%struct.i40iw_timer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
