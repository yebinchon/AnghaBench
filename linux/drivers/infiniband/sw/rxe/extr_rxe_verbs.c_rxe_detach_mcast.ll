; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_detach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_detach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @rxe_detach_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_detach_mcast(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rxe_dev*, align 8
  %8 = alloca %struct.rxe_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.rxe_dev* @to_rdev(i32 %11)
  store %struct.rxe_dev* %12, %struct.rxe_dev** %7, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %14 = call %struct.rxe_qp* @to_rqp(%struct.ib_qp* %13)
  store %struct.rxe_qp* %14, %struct.rxe_qp** %8, align 8
  %15 = load %struct.rxe_dev*, %struct.rxe_dev** %7, align 8
  %16 = load %struct.rxe_qp*, %struct.rxe_qp** %8, align 8
  %17 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %18 = call i32 @rxe_mcast_drop_grp_elem(%struct.rxe_dev* %15, %struct.rxe_qp* %16, %union.ib_gid* %17)
  ret i32 %18
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_qp* @to_rqp(%struct.ib_qp*) #1

declare dso_local i32 @rxe_mcast_drop_grp_elem(%struct.rxe_dev*, %struct.rxe_qp*, %union.ib_gid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
