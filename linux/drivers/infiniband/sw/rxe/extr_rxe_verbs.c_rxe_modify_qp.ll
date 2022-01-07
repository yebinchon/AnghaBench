; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_qp_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_qp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %struct.ib_qp_attr*, i32, %struct.ib_udata*)* @rxe_modify_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_modify_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_dev*, align 8
  %12 = alloca %struct.rxe_qp*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %13 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %14 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.rxe_dev* @to_rdev(i32 %15)
  store %struct.rxe_dev* %16, %struct.rxe_dev** %11, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %18 = call %struct.rxe_qp* @to_rqp(%struct.ib_qp* %17)
  store %struct.rxe_qp* %18, %struct.rxe_qp** %12, align 8
  %19 = load %struct.rxe_dev*, %struct.rxe_dev** %11, align 8
  %20 = load %struct.rxe_qp*, %struct.rxe_qp** %12, align 8
  %21 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @rxe_qp_chk_attr(%struct.rxe_dev* %19, %struct.rxe_qp* %20, %struct.ib_qp_attr* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  br label %37

27:                                               ; preds = %4
  %28 = load %struct.rxe_qp*, %struct.rxe_qp** %12, align 8
  %29 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %32 = call i32 @rxe_qp_from_attr(%struct.rxe_qp* %28, %struct.ib_qp_attr* %29, i32 %30, %struct.ib_udata* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %37

36:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %39

37:                                               ; preds = %35, %26
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

declare dso_local %struct.rxe_qp* @to_rqp(%struct.ib_qp*) #1

declare dso_local i32 @rxe_qp_chk_attr(%struct.rxe_dev*, %struct.rxe_qp*, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @rxe_qp_from_attr(%struct.rxe_qp*, %struct.ib_qp_attr*, i32, %struct.ib_udata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
