; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_get_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_req.c_get_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_qp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IB_QPT_RC = common dso_local global i64 0, align 8
@IB_QPT_UC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_qp*)* @get_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mtu(%struct.rxe_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_qp*, align 8
  %4 = alloca %struct.rxe_dev*, align 8
  store %struct.rxe_qp* %0, %struct.rxe_qp** %3, align 8
  %5 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.rxe_dev* @to_rdev(i32 %8)
  store %struct.rxe_dev* %9, %struct.rxe_dev** %4, align 8
  %10 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %11 = call i64 @qp_type(%struct.rxe_qp* %10)
  %12 = load i64, i64* @IB_QPT_RC, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %16 = call i64 @qp_type(%struct.rxe_qp* %15)
  %17 = load i64, i64* @IB_QPT_UC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14, %1
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %3, align 8
  %21 = getelementptr inbounds %struct.rxe_qp, %struct.rxe_qp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.rxe_dev*, %struct.rxe_dev** %4, align 8
  %25 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local i64 @qp_type(%struct.rxe_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
