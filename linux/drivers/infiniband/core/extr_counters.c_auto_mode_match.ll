; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_auto_mode_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_counters.c_auto_mode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rdma_counter = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.auto_mode_param }
%struct.auto_mode_param = type { i64 }

@RDMA_COUNTER_MASK_QP_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.rdma_counter*, i32)* @auto_mode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auto_mode_match(%struct.ib_qp* %0, %struct.rdma_counter* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.rdma_counter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.auto_mode_param*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.rdma_counter* %1, %struct.rdma_counter** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.rdma_counter*, %struct.rdma_counter** %6, align 8
  %11 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.auto_mode_param* %12, %struct.auto_mode_param** %8, align 8
  store i32 1, i32* %9, align 4
  %13 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 1
  %15 = call i32 @rdma_is_visible_in_pid_ns(%struct.TYPE_6__* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.rdma_counter*, %struct.rdma_counter** %6, align 8
  %20 = getelementptr inbounds %struct.rdma_counter, %struct.rdma_counter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @task_pid_nr(i32 %22)
  %24 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %25 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @task_pid_nr(i32 %27)
  %29 = icmp ne i64 %23, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %49

31:                                               ; preds = %18
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @RDMA_COUNTER_MASK_QP_TYPE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.auto_mode_param*, %struct.auto_mode_param** %8, align 8
  %38 = getelementptr inbounds %struct.auto_mode_param, %struct.auto_mode_param* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %41 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %36, %31
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %47, %30, %17
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @rdma_is_visible_in_pid_ns(%struct.TYPE_6__*) #1

declare dso_local i64 @task_pid_nr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
