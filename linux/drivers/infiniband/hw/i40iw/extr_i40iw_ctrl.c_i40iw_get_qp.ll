; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_get_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_ctrl.c_i40iw_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head* }
%struct.i40iw_sc_qp = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i40iw_sc_qp* (%struct.list_head*, %struct.i40iw_sc_qp*)* @i40iw_get_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i40iw_sc_qp* @i40iw_get_qp(%struct.list_head* %0, %struct.i40iw_sc_qp* %1) #0 {
  %3 = alloca %struct.i40iw_sc_qp*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.i40iw_sc_qp*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.list_head* %0, %struct.list_head** %4, align 8
  store %struct.i40iw_sc_qp* %1, %struct.i40iw_sc_qp** %5, align 8
  store %struct.list_head* null, %struct.list_head** %6, align 8
  %8 = load %struct.list_head*, %struct.list_head** %4, align 8
  %9 = call i64 @list_empty(%struct.list_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store %struct.i40iw_sc_qp* null, %struct.i40iw_sc_qp** %3, align 8
  br label %35

12:                                               ; preds = %2
  %13 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %14 = icmp ne %struct.i40iw_sc_qp* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %12
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  %17 = getelementptr inbounds %struct.list_head, %struct.list_head* %16, i32 0, i32 0
  %18 = load %struct.list_head*, %struct.list_head** %17, align 8
  store %struct.list_head* %18, %struct.list_head** %6, align 8
  br label %32

19:                                               ; preds = %12
  %20 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %5, align 8
  %21 = getelementptr inbounds %struct.i40iw_sc_qp, %struct.i40iw_sc_qp* %20, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %7, align 8
  %22 = load %struct.list_head*, %struct.list_head** %7, align 8
  %23 = load %struct.list_head*, %struct.list_head** %4, align 8
  %24 = icmp ne %struct.list_head* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.list_head*, %struct.list_head** %7, align 8
  %27 = getelementptr inbounds %struct.list_head, %struct.list_head* %26, i32 0, i32 0
  %28 = load %struct.list_head*, %struct.list_head** %27, align 8
  br label %30

29:                                               ; preds = %19
  br label %30

30:                                               ; preds = %29, %25
  %31 = phi %struct.list_head* [ %28, %25 ], [ null, %29 ]
  store %struct.list_head* %31, %struct.list_head** %6, align 8
  br label %32

32:                                               ; preds = %30, %15
  %33 = load %struct.list_head*, %struct.list_head** %6, align 8
  %34 = call %struct.i40iw_sc_qp* @i40iw_qp_from_entry(%struct.list_head* %33)
  store %struct.i40iw_sc_qp* %34, %struct.i40iw_sc_qp** %3, align 8
  br label %35

35:                                               ; preds = %32, %11
  %36 = load %struct.i40iw_sc_qp*, %struct.i40iw_sc_qp** %3, align 8
  ret %struct.i40iw_sc_qp* %36
}

declare dso_local i64 @list_empty(%struct.list_head*) #1

declare dso_local %struct.i40iw_sc_qp* @i40iw_qp_from_entry(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
