; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_reset_sending_psn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_rc.c_reset_sending_psn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i64, i64, i64, i64, i32 }
%struct.rvt_swqe = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IB_WR_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_TID_RDMA_READ = common dso_local global i64 0, align 8
@IB_WR_TID_RDMA_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, i64)* @reset_sending_psn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_sending_psn(%struct.rvt_qp* %0, i64 %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rvt_swqe*, align 8
  %6 = alloca i64, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %8 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %11 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %10, i32 0, i32 4
  %12 = call i32 @lockdep_assert_held(i32* %11)
  br label %13

13:                                               ; preds = %72, %2
  %14 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp* %14, i64 %15)
  store %struct.rvt_swqe* %16, %struct.rvt_swqe** %5, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %19 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @cmp_psn(i64 %17, i64 %20)
  %22 = icmp sle i64 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %13
  %24 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %25 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IB_WR_RDMA_READ, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %44, label %30

30:                                               ; preds = %23
  %31 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %32 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IB_WR_TID_RDMA_READ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %39 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_WR_TID_RDMA_WRITE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %37, %30, %23
  %45 = load %struct.rvt_swqe*, %struct.rvt_swqe** %5, align 8
  %46 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %50 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  br label %56

51:                                               ; preds = %37
  %52 = load i64, i64* %4, align 8
  %53 = add nsw i64 %52, 1
  %54 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %55 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %51, %44
  br label %73

57:                                               ; preds = %13
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %6, align 8
  %60 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %61 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i64 0, i64* %6, align 8
  br label %65

65:                                               ; preds = %64, %57
  %66 = load i64, i64* %6, align 8
  %67 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %68 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %73

72:                                               ; preds = %65
  br label %13

73:                                               ; preds = %71, %56
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.rvt_swqe* @rvt_get_swqe_ptr(%struct.rvt_qp*, i64) #1

declare dso_local i64 @cmp_psn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
