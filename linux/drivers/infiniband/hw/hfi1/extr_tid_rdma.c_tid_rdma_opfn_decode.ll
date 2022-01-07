; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_rdma_params = type { i32, i32, i32, i32, i32, i32, i32 }

@TID_OPFN_MAX_LEN_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_LEN_MASK = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_JKEY_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_JKEY_MASK = common dso_local global i32 0, align 4
@TID_OPFN_MAX_WRITE_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_WRITE_MASK = common dso_local global i32 0, align 4
@TID_OPFN_MAX_READ_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_READ_MASK = common dso_local global i32 0, align 4
@TID_OPFN_QP_KDETH_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_QP_KDETH_MASK = common dso_local global i32 0, align 4
@TID_OPFN_QP_CTXT_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_QP_CTXT_MASK = common dso_local global i32 0, align 4
@TID_OPFN_URG_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_URG_MASK = common dso_local global i32 0, align 4
@TID_OPFN_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_TIMEOUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tid_rdma_params*, i32)* @tid_rdma_opfn_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tid_rdma_opfn_decode(%struct.tid_rdma_params* %0, i32 %1) #0 {
  %3 = alloca %struct.tid_rdma_params*, align 8
  %4 = alloca i32, align 4
  store %struct.tid_rdma_params* %0, %struct.tid_rdma_params** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @TID_OPFN_MAX_LEN_SHIFT, align 4
  %7 = ashr i32 %5, %6
  %8 = load i32, i32* @TID_OPFN_MAX_LEN_MASK, align 4
  %9 = and i32 %7, %8
  %10 = add nsw i32 %9, 1
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %14 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @TID_OPFN_JKEY_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @TID_OPFN_JKEY_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %21 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TID_OPFN_MAX_WRITE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @TID_OPFN_MAX_WRITE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %28 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @TID_OPFN_MAX_READ_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = load i32, i32* @TID_OPFN_MAX_READ_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %35 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TID_OPFN_QP_KDETH_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32, i32* @TID_OPFN_QP_KDETH_MASK, align 4
  %40 = and i32 %38, %39
  %41 = shl i32 %40, 16
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @TID_OPFN_QP_CTXT_SHIFT, align 4
  %44 = ashr i32 %42, %43
  %45 = load i32, i32* @TID_OPFN_QP_CTXT_MASK, align 4
  %46 = and i32 %44, %45
  %47 = or i32 %41, %46
  %48 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %49 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @TID_OPFN_URG_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = load i32, i32* @TID_OPFN_URG_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %56 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TID_OPFN_TIMEOUT_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = load i32, i32* @TID_OPFN_TIMEOUT_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %3, align 8
  %63 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
