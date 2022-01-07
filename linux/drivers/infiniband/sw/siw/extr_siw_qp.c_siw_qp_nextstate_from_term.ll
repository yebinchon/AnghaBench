; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_term.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_qp_nextstate_from_term.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.siw_qp_attrs = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SIW_WR_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siw_qp*, %struct.siw_qp_attrs*)* @siw_qp_nextstate_from_term to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siw_qp_nextstate_from_term(%struct.siw_qp* %0, %struct.siw_qp_attrs* %1) #0 {
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_qp_attrs*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_qp_attrs* %1, %struct.siw_qp_attrs** %4, align 8
  %5 = load %struct.siw_qp_attrs*, %struct.siw_qp_attrs** %4, align 8
  %6 = getelementptr inbounds %struct.siw_qp_attrs, %struct.siw_qp_attrs* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %24 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %10 = call i32 @siw_rq_flush(%struct.siw_qp* %9)
  %11 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %12 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 128, i32* %13, align 4
  %14 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %15 = call %struct.TYPE_4__* @tx_wqe(%struct.siw_qp* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SIW_WR_IDLE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %8
  %21 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %22 = call i32 @siw_sq_flush(%struct.siw_qp* %21)
  br label %23

23:                                               ; preds = %20, %8
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %23
  ret void
}

declare dso_local i32 @siw_rq_flush(%struct.siw_qp*) #1

declare dso_local %struct.TYPE_4__* @tx_wqe(%struct.siw_qp*) #1

declare dso_local i32 @siw_sq_flush(%struct.siw_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
