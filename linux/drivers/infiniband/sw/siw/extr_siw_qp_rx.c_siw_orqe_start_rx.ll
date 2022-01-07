; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_orqe_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp_rx.c_siw_orqe_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_qp = type { i32 }
%struct.siw_sqe = type { %struct.TYPE_6__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.siw_wqe = type { i32, i32**, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@SIW_WQE_VALID = common dso_local global i32 0, align 4
@SIW_WR_INPROGRESS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siw_qp*)* @siw_orqe_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siw_orqe_start_rx(%struct.siw_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.siw_qp*, align 8
  %4 = alloca %struct.siw_sqe*, align 8
  %5 = alloca %struct.siw_wqe*, align 8
  store %struct.siw_qp* %0, %struct.siw_qp** %3, align 8
  store %struct.siw_wqe* null, %struct.siw_wqe** %5, align 8
  %6 = call i32 (...) @smp_mb()
  %7 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %8 = call %struct.siw_sqe* @orq_get_current(%struct.siw_qp* %7)
  store %struct.siw_sqe* %8, %struct.siw_sqe** %4, align 8
  %9 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %10 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @READ_ONCE(i32 %11)
  %13 = load i32, i32* @SIW_WQE_VALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %95

16:                                               ; preds = %1
  %17 = load %struct.siw_qp*, %struct.siw_qp** %3, align 8
  %18 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %17, i32 0, i32 0
  %19 = call %struct.siw_wqe* @rx_wqe(i32* %18)
  store %struct.siw_wqe* %19, %struct.siw_wqe** %5, align 8
  %20 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %21 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %24 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32 %22, i32* %25, align 4
  %26 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %27 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %30 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %33 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %39 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32 %37, i32* %43, align 4
  %44 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %45 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %51 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %49, i32* %55, align 4
  %56 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %57 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %63 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %61, i32* %67, align 4
  %68 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %69 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %72 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %70, i32* %73, align 4
  %74 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %75 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 1, i32* %76, align 8
  %77 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %78 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %84 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  %85 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %86 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %85, i32 0, i32 2
  store i64 0, i64* %86, align 8
  %87 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %88 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %87, i32 0, i32 1
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 0
  store i32* null, i32** %90, align 8
  %91 = call i32 (...) @smp_wmb()
  %92 = load i32, i32* @SIW_WR_INPROGRESS, align 4
  %93 = load %struct.siw_wqe*, %struct.siw_wqe** %5, align 8
  %94 = getelementptr inbounds %struct.siw_wqe, %struct.siw_wqe* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %2, align 4
  br label %98

95:                                               ; preds = %1
  %96 = load i32, i32* @EPROTO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %16
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local %struct.siw_sqe* @orq_get_current(%struct.siw_qp*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local %struct.siw_wqe* @rx_wqe(i32*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
