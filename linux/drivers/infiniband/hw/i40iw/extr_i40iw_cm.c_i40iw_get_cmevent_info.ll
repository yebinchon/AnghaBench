; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_cmevent_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_cm.c_i40iw_get_cmevent_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_cm_node = type { i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.iw_cm_id = type { i32, i32 }
%struct.iw_cm_event = type { i32, i32, i64, i8*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_cm_node*, %struct.iw_cm_id*, %struct.iw_cm_event*)* @i40iw_get_cmevent_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_get_cmevent_info(%struct.i40iw_cm_node* %0, %struct.iw_cm_id* %1, %struct.iw_cm_event* %2) #0 {
  %4 = alloca %struct.i40iw_cm_node*, align 8
  %5 = alloca %struct.iw_cm_id*, align 8
  %6 = alloca %struct.iw_cm_event*, align 8
  store %struct.i40iw_cm_node* %0, %struct.i40iw_cm_node** %4, align 8
  store %struct.iw_cm_id* %1, %struct.iw_cm_id** %5, align 8
  store %struct.iw_cm_event* %2, %struct.iw_cm_event** %6, align 8
  %7 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %8 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %7, i32 0, i32 5
  %9 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %10 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %9, i32 0, i32 1
  %11 = call i32 @memcpy(i32* %8, i32* %10, i32 4)
  %12 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %13 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %12, i32 0, i32 4
  %14 = load %struct.iw_cm_id*, %struct.iw_cm_id** %5, align 8
  %15 = getelementptr inbounds %struct.iw_cm_id, %struct.iw_cm_id* %14, i32 0, i32 0
  %16 = call i32 @memcpy(i32* %13, i32* %15, i32 4)
  %17 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %18 = icmp ne %struct.i40iw_cm_node* %17, null
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  %20 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %21 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %25 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %27 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %31 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %33 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %36 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.i40iw_cm_node*, %struct.i40iw_cm_node** %4, align 8
  %38 = getelementptr inbounds %struct.i40iw_cm_node, %struct.i40iw_cm_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.iw_cm_event*, %struct.iw_cm_event** %6, align 8
  %41 = getelementptr inbounds %struct.iw_cm_event, %struct.iw_cm_event* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %19, %3
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
