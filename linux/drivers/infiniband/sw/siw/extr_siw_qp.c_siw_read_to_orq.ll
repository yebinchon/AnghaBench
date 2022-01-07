; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_read_to_orq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_qp.c_siw_read_to_orq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_sqe = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@SIW_WQE_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @siw_read_to_orq(%struct.siw_sqe* %0, %struct.siw_sqe* %1) #0 {
  %3 = alloca %struct.siw_sqe*, align 8
  %4 = alloca %struct.siw_sqe*, align 8
  store %struct.siw_sqe* %0, %struct.siw_sqe** %3, align 8
  store %struct.siw_sqe* %1, %struct.siw_sqe** %4, align 8
  %5 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %6 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %9 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %11 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %14 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %16 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %22 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %20, i32* %25, align 4
  %26 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %27 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %33 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  store i32 %31, i32* %36, align 4
  %37 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %38 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %44 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 4
  %48 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %49 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %55 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.siw_sqe*, %struct.siw_sqe** %4, align 8
  %60 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SIW_WQE_VALID, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %65 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.siw_sqe*, %struct.siw_sqe** %3, align 8
  %67 = getelementptr inbounds %struct.siw_sqe, %struct.siw_sqe* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
