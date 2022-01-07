; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_build_smp_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_mad.c_build_smp_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_cqe = type { i32 }
%struct.ib_wc = type { i32, i32, i64, i64, i8*, %struct.ib_qp*, i32, i8*, i32, i32, %struct.ib_cqe* }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@IB_WC_RECV = common dso_local global i32 0, align 4
@IB_QP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_qp*, %struct.ib_cqe*, i8*, i8*, i32, %struct.ib_wc*)* @build_smp_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_smp_wc(%struct.ib_qp* %0, %struct.ib_cqe* %1, i8* %2, i8* %3, i32 %4, %struct.ib_wc* %5) #0 {
  %7 = alloca %struct.ib_qp*, align 8
  %8 = alloca %struct.ib_cqe*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_wc*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %7, align 8
  store %struct.ib_cqe* %1, %struct.ib_cqe** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ib_wc* %5, %struct.ib_wc** %12, align 8
  %13 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %14 = call i32 @memset(%struct.ib_wc* %13, i32 0, i32 72)
  %15 = load %struct.ib_cqe*, %struct.ib_cqe** %8, align 8
  %16 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %17 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %16, i32 0, i32 10
  store %struct.ib_cqe* %15, %struct.ib_cqe** %17, align 8
  %18 = load i32, i32* @IB_WC_SUCCESS, align 4
  %19 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %20 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %19, i32 0, i32 9
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @IB_WC_RECV, align 4
  %22 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %23 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 7
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 0
  store i32 8, i32* %28, align 8
  %29 = load i32, i32* @IB_QP0, align 4
  %30 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %31 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ib_qp*, %struct.ib_qp** %7, align 8
  %33 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %34 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %33, i32 0, i32 5
  store %struct.ib_qp* %32, %struct.ib_qp** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %37 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %39 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %41 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ib_wc*, %struct.ib_wc** %12, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ib_wc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
