; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_retrans_expired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_retrans_expired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, %struct.iw_cm_id* }
%struct.iw_cm_id = type { i32 (%struct.iw_cm_id*)* }

@I40IW_CM_STATE_CLOSED = common dso_local global i32 0, align 4
@I40IW_CM_EVENT_ABORTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*)* @i40iw_retrans_expired to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_retrans_expired(%struct.i40iw_cm_node* %0) #0 {
  %2 = alloca %struct.i40iw_cm_node*, align 8
  %3 = alloca %struct.iw_cm_id*, align 8
  %4 = alloca i32, align 4
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %2, align 8
  %5 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %6 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %5, i32 0, i32 2
  %7 = load %struct.iw_cm_id*, %struct.iw_cm_id** %6, align 8
  store %struct.iw_cm_id* %7, %struct.iw_cm_id** %3, align 8
  %8 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %9 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @I40IW_CM_STATE_CLOSED, align 4
  %12 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %13 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %32 [
    i32 128, label %15
    i32 131, label %15
    i32 130, label %18
    i32 129, label %18
  ]

15:                                               ; preds = %1, %1
  %16 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %17 = call i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node* %16)
  br label %41

18:                                               ; preds = %1, %1
  %19 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %20 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %19, i32 0, i32 2
  %21 = load %struct.iw_cm_id*, %struct.iw_cm_id** %20, align 8
  %22 = icmp ne %struct.iw_cm_id* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %25 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %24, i32 0, i32 0
  %26 = load i32 (%struct.iw_cm_id*)*, i32 (%struct.iw_cm_id*)** %25, align 8
  %27 = load %struct.iw_cm_id*, %struct.iw_cm_id** %3, align 8
  %28 = call i32 %26(%struct.iw_cm_id* %27)
  br label %29

29:                                               ; preds = %23, %18
  %30 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %31 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %30)
  br label %41

32:                                               ; preds = %1
  %33 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %34 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %33, i32 0, i32 1
  %35 = call i32 @atomic_inc(i32* %34)
  %36 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %37 = call i32 @i40iw_send_reset(%struct.i40iw_cm_node* %36)
  %38 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %2, align 8
  %39 = load i32, i32* @I40IW_CM_EVENT_ABORTED, align 4
  %40 = call i32 @i40iw_create_event(%struct.i40iw_cm_node* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %29, %15
  ret void
}

declare dso_local i32 @i40iw_rem_ref_cm_node(%struct.i40iw_cm_node*) #1

declare dso_local i32 @i40iw_send_reset(%struct.i40iw_cm_node*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @i40iw_create_event(%struct.i40iw_cm_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
