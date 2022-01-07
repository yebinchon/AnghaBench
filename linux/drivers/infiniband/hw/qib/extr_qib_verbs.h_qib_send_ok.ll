; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.h_qib_send_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_verbs.h_qib_send_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvt_qp = type { i32, i64 }

@RVT_S_BUSY = common dso_local global i32 0, align 4
@RVT_S_ANY_WAIT_IO = common dso_local global i32 0, align 4
@RVT_S_RESP_PENDING = common dso_local global i32 0, align 4
@RVT_S_ANY_WAIT_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvt_qp*)* @qib_send_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_send_ok(%struct.rvt_qp* %0) #0 {
  %2 = alloca %struct.rvt_qp*, align 8
  store %struct.rvt_qp* %0, %struct.rvt_qp** %2, align 8
  %3 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %4 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @RVT_S_BUSY, align 4
  %7 = load i32, i32* @RVT_S_ANY_WAIT_IO, align 4
  %8 = or i32 %6, %7
  %9 = and i32 %5, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %1
  %12 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %13 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %18 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RVT_S_RESP_PENDING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load %struct.rvt_qp*, %struct.rvt_qp** %2, align 8
  %25 = getelementptr inbounds %struct.rvt_qp, %struct.rvt_qp* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RVT_S_ANY_WAIT_SEND, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %23, %16, %11
  %32 = phi i1 [ true, %16 ], [ true, %11 ], [ %30, %23 ]
  br label %33

33:                                               ; preds = %31, %1
  %34 = phi i1 [ false, %1 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
