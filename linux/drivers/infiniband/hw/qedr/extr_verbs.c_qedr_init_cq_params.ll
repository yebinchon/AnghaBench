; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_cq_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_init_cq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_cq = type { i32 }
%struct.qedr_ucontext = type { i32 }
%struct.qedr_dev = type { i32 }
%struct.qed_rdma_create_cq_in_params = type { i32, i32, i32, i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qedr_cq*, %struct.qedr_ucontext*, %struct.qedr_dev*, i32, i32, i32, i32, %struct.qed_rdma_create_cq_in_params*)* @qedr_init_cq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedr_init_cq_params(%struct.qedr_cq* %0, %struct.qedr_ucontext* %1, %struct.qedr_dev* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.qed_rdma_create_cq_in_params* %7) #0 {
  %9 = alloca %struct.qedr_cq*, align 8
  %10 = alloca %struct.qedr_ucontext*, align 8
  %11 = alloca %struct.qedr_dev*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qed_rdma_create_cq_in_params*, align 8
  store %struct.qedr_cq* %0, %struct.qedr_cq** %9, align 8
  store %struct.qedr_ucontext* %1, %struct.qedr_ucontext** %10, align 8
  store %struct.qedr_dev* %2, %struct.qedr_dev** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.qed_rdma_create_cq_in_params* %7, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %17 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %18 = call i32 @memset(%struct.qed_rdma_create_cq_in_params* %17, i32 0, i32 40)
  %19 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %20 = ptrtoint %struct.qedr_cq* %19 to i64
  %21 = call i32 @upper_32_bits(i64 %20)
  %22 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %25 = ptrtoint %struct.qedr_cq* %24 to i64
  %26 = call i32 @lower_32_bits(i64 %25)
  %27 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %28 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %12, align 4
  %30 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sub nsw i32 %32, 1
  %34 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %35 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %10, align 8
  %37 = icmp ne %struct.qedr_ucontext* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %8
  %39 = load %struct.qedr_ucontext*, %struct.qedr_ucontext** %10, align 8
  %40 = getelementptr inbounds %struct.qedr_ucontext, %struct.qedr_ucontext* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  br label %46

42:                                               ; preds = %8
  %43 = load %struct.qedr_dev*, %struct.qedr_dev** %11, align 8
  %44 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %48 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %49 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %52 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %55 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load %struct.qed_rdma_create_cq_in_params*, %struct.qed_rdma_create_cq_in_params** %16, align 8
  %57 = getelementptr inbounds %struct.qed_rdma_create_cq_in_params, %struct.qed_rdma_create_cq_in_params* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  ret void
}

declare dso_local i32 @memset(%struct.qed_rdma_create_cq_in_params*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local i32 @lower_32_bits(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
