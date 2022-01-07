; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_qp_sq_proc_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_qp_sq_proc_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32 }
%struct.siw_wqe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*, %struct.siw_wqe*)* @siw_qp_sq_proc_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_qp_sq_proc_local(%struct.siw_qp* %0, %struct.siw_wqe* %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_wqe*, align 8
  %5 = alloca i32, align 4
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_wqe* %1, %struct.siw_wqe** %4, align 8
  %6 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %7 = call i32 @tx_type(%struct.siw_wqe* %6)
  switch i32 %7, label %24 [
    i32 128, label %8
    i32 129, label %15
  ]

8:                                                ; preds = %2
  %9 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %10 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %13 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %12, i32 0, i32 0
  %14 = call i32 @siw_fastreg_mr(i32 %11, %struct.TYPE_2__* %13)
  store i32 %14, i32* %5, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %17 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.siw_wqe*, %struct.siw_wqe** %4, align 8
  %20 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @siw_invalidate_stag(i32 %18, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %15, %8
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @tx_type(%struct.siw_wqe*) #1

declare dso_local i32 @siw_fastreg_mr(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @siw_invalidate_stag(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
