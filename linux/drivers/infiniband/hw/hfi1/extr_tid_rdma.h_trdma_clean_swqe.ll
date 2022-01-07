; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.h_trdma_clean_swqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.h_trdma_clean_swqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32 }
%struct.rvt_swqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvt_qp*, %struct.rvt_swqe*)* @trdma_clean_swqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trdma_clean_swqe(%struct.rvt_qp* %0, %struct.rvt_swqe* %1) #0 {
  %3 = alloca %struct.rvt_qp*, align 8
  %4 = alloca %struct.rvt_swqe*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %3, align 8
  store %struct.rvt_swqe* %1, %struct.rvt_swqe** %4, align 8
  %5 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %6 = getelementptr inbounds %struct.rvt_swqe, %struct.rvt_swqe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  %11 = load %struct.rvt_qp*, %struct.rvt_qp** %3, align 8
  %12 = load %struct.rvt_swqe*, %struct.rvt_swqe** %4, align 8
  %13 = call i32 @__trdma_clean_swqe(%struct.rvt_qp* %11, %struct.rvt_swqe* %12)
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @__trdma_clean_swqe(%struct.rvt_qp*, %struct.rvt_swqe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
