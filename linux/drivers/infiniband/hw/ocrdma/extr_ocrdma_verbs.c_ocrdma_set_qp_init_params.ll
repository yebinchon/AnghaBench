; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_set_qp_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32, %struct.ocrdma_pd* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_pd = type { i32 }
%struct.ib_qp_init_attr = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@OCRDMA_QP_INB_RD = common dso_local global i32 0, align 4
@OCRDMA_QP_INB_WR = common dso_local global i32 0, align 4
@OCRDMA_QPS_RST = common dso_local global i32 0, align 4
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_qp*, %struct.ocrdma_pd*, %struct.ib_qp_init_attr*)* @ocrdma_set_qp_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_set_qp_init_params(%struct.ocrdma_qp* %0, %struct.ocrdma_pd* %1, %struct.ib_qp_init_attr* %2) #0 {
  %4 = alloca %struct.ocrdma_qp*, align 8
  %5 = alloca %struct.ocrdma_pd*, align 8
  %6 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %4, align 8
  store %struct.ocrdma_pd* %1, %struct.ocrdma_pd** %5, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %6, align 8
  %7 = load %struct.ocrdma_pd*, %struct.ocrdma_pd** %5, align 8
  %8 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %9 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %8, i32 0, i32 10
  store %struct.ocrdma_pd* %7, %struct.ocrdma_pd** %9, align 8
  %10 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %10, i32 0, i32 9
  %12 = call i32 @spin_lock_init(i32* %11)
  %13 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %14 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %13, i32 0, i32 8
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %16, i32 0, i32 7
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %20 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %23 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load i32, i32* @OCRDMA_QP_INB_RD, align 4
  %25 = load i32, i32* @OCRDMA_QP_INB_WR, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %28 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %34 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %36 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %40 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %43 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %47 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @OCRDMA_QPS_RST, align 4
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %6, align 8
  %53 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  %59 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %4, align 8
  %60 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
