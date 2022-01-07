; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe_verbs.c_rxe_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.rxe_srq = type { i32 }
%struct.rxe_dev = type { i32 }
%struct.rxe_modify_srq_cmd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, %struct.ib_udata*)* @rxe_modify_srq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rxe_srq*, align 8
  %12 = alloca %struct.rxe_dev*, align 8
  %13 = alloca %struct.rxe_modify_srq_cmd, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %6, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %14 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %15 = call %struct.rxe_srq* @to_rsrq(%struct.ib_srq* %14)
  store %struct.rxe_srq* %15, %struct.rxe_srq** %11, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %17 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rxe_dev* @to_rdev(i32 %18)
  store %struct.rxe_dev* %19, %struct.rxe_dev** %12, align 8
  %20 = bitcast %struct.rxe_modify_srq_cmd* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %22 = icmp ne %struct.ib_udata* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %4
  %24 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %25 = getelementptr inbounds %struct.ib_udata, %struct.ib_udata* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 4
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %62

32:                                               ; preds = %23
  %33 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %34 = call i32 @ib_copy_from_udata(%struct.rxe_modify_srq_cmd* %13, %struct.ib_udata* %33, i32 4)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %62

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39, %4
  %41 = load %struct.rxe_dev*, %struct.rxe_dev** %12, align 8
  %42 = load %struct.rxe_srq*, %struct.rxe_srq** %11, align 8
  %43 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @rxe_srq_chk_attr(%struct.rxe_dev* %41, %struct.rxe_srq* %42, %struct.ib_srq_attr* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %60

49:                                               ; preds = %40
  %50 = load %struct.rxe_dev*, %struct.rxe_dev** %12, align 8
  %51 = load %struct.rxe_srq*, %struct.rxe_srq** %11, align 8
  %52 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ib_udata*, %struct.ib_udata** %9, align 8
  %55 = call i32 @rxe_srq_from_attr(%struct.rxe_dev* %50, %struct.rxe_srq* %51, %struct.ib_srq_attr* %52, i32 %53, %struct.rxe_modify_srq_cmd* %13, %struct.ib_udata* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %60

59:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %62

60:                                               ; preds = %58, %48
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %59, %37, %29
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.rxe_srq* @to_rsrq(%struct.ib_srq*) #1

declare dso_local %struct.rxe_dev* @to_rdev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ib_copy_from_udata(%struct.rxe_modify_srq_cmd*, %struct.ib_udata*, i32) #1

declare dso_local i32 @rxe_srq_chk_attr(%struct.rxe_dev*, %struct.rxe_srq*, %struct.ib_srq_attr*, i32) #1

declare dso_local i32 @rxe_srq_from_attr(%struct.rxe_dev*, %struct.rxe_srq*, %struct.ib_srq_attr*, i32, %struct.rxe_modify_srq_cmd*, %struct.ib_udata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
