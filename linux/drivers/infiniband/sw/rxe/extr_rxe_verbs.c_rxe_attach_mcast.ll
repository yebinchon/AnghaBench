; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_attach_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_attach_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%union.ib_gid = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_qp = type { i32 }
%struct.rxe_mc_grp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @rxe_attach_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_attach_mcast(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %union.ib_gid*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rxe_dev*, align 8
  %10 = alloca %struct.rxe_qp*, align 8
  %11 = alloca %struct.rxe_mc_grp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %union.ib_gid* %1, %union.ib_gid** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %13 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.rxe_dev* @to_rdev(i32 %14)
  store %struct.rxe_dev* %15, %struct.rxe_dev** %9, align 8
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = call %struct.rxe_qp* @to_rqp(%struct.ib_qp* %16)
  store %struct.rxe_qp* %17, %struct.rxe_qp** %10, align 8
  %18 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %19 = load %union.ib_gid*, %union.ib_gid** %6, align 8
  %20 = call i32 @rxe_mcast_get_grp(%struct.rxe_dev* %18, %union.ib_gid* %19, %struct.rxe_mc_grp** %11)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.rxe_dev*, %struct.rxe_dev** %9, align 8
  %27 = load %struct.rxe_qp*, %struct.rxe_qp** %10, align 8
  %28 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %11, align 8
  %29 = call i32 @rxe_mcast_add_grp_elem(%struct.rxe_dev* %26, %struct.rxe_qp* %27, %struct.rxe_mc_grp* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rxe_mc_grp*, %struct.rxe_mc_grp** %11, align 8
  %31 = call i32 @rxe_drop_ref(%struct.rxe_mc_grp* %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %25, %23
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_qp* @to_rqp(%struct.ib_qp*) #1

declare dso_local i32 @rxe_mcast_get_grp(%struct.rxe_dev*, %union.ib_gid*, %struct.rxe_mc_grp**) #1

declare dso_local i32 @rxe_mcast_add_grp_elem(%struct.rxe_dev*, %struct.rxe_qp*, %struct.rxe_mc_grp*) #1

declare dso_local i32 @rxe_drop_ref(%struct.rxe_mc_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
