; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_check_sgl_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_tx.c_siw_check_sgl_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.siw_wqe = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.siw_sge* }
%struct.siw_sge = type { i64 }

@SIW_MAX_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@E_ACCESS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.siw_wqe*, i32)* @siw_check_sgl_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_check_sgl_tx(%struct.ib_pd* %0, %struct.siw_wqe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.siw_wqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siw_sge*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.siw_wqe* %1, %struct.siw_wqe** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %14 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load %struct.siw_sge*, %struct.siw_sge** %15, align 8
  %17 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %16, i64 0
  store %struct.siw_sge* %17, %struct.siw_sge** %8, align 8
  %18 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %19 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @SIW_MAX_SGE, align 4
  %24 = icmp sgt i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %80

31:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %71, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %78

35:                                               ; preds = %32
  %36 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %37 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %42 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %43 = load %struct.siw_wqe*, %struct.siw_wqe** %6, align 8
  %44 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %51 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @siw_check_sge(%struct.ib_pd* %41, %struct.siw_sge* %42, i32* %48, i32 %49, i32 0, i64 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @E_ACCESS_OK, align 4
  %56 = icmp ne i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %40
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %4, align 4
  br label %80

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %65 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = load %struct.siw_sge*, %struct.siw_sge** %8, align 8
  %77 = getelementptr inbounds %struct.siw_sge, %struct.siw_sge* %76, i32 1
  store %struct.siw_sge* %77, %struct.siw_sge** %8, align 8
  br label %32

78:                                               ; preds = %32
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %60, %28
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @siw_check_sge(%struct.ib_pd*, %struct.siw_sge*, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
