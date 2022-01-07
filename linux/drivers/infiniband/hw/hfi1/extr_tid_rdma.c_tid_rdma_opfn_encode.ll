; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_tid_rdma.c_tid_rdma_opfn_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_rdma_params = type { i32, i64, i64, i64, i64, i64, i64 }

@TID_OPFN_QP_CTXT_MASK = common dso_local global i32 0, align 4
@TID_OPFN_QP_CTXT_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_QP_KDETH_MASK = common dso_local global i32 0, align 4
@TID_OPFN_QP_KDETH_SHIFT = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_LEN_MASK = common dso_local global i32 0, align 4
@TID_OPFN_MAX_LEN_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_TIMEOUT_MASK = common dso_local global i32 0, align 4
@TID_OPFN_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_URG_MASK = common dso_local global i32 0, align 4
@TID_OPFN_URG_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_JKEY_MASK = common dso_local global i32 0, align 4
@TID_OPFN_JKEY_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_READ_MASK = common dso_local global i32 0, align 4
@TID_OPFN_MAX_READ_SHIFT = common dso_local global i32 0, align 4
@TID_OPFN_MAX_WRITE_MASK = common dso_local global i32 0, align 4
@TID_OPFN_MAX_WRITE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tid_rdma_params*)* @tid_rdma_opfn_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tid_rdma_opfn_encode(%struct.tid_rdma_params* %0) #0 {
  %2 = alloca %struct.tid_rdma_params*, align 8
  store %struct.tid_rdma_params* %0, %struct.tid_rdma_params** %2, align 8
  %3 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %4 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %3, i32 0, i32 6
  %5 = load i64, i64* %4, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @TID_OPFN_QP_CTXT_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @TID_OPFN_QP_CTXT_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %12 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %11, i32 0, i32 6
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = ashr i32 %14, 16
  %16 = load i32, i32* @TID_OPFN_QP_KDETH_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @TID_OPFN_QP_KDETH_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = or i32 %10, %19
  %21 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %22 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = ashr i32 %23, %24
  %26 = sub nsw i32 %25, 1
  %27 = load i32, i32* @TID_OPFN_MAX_LEN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @TID_OPFN_MAX_LEN_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %20, %30
  %32 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %33 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* @TID_OPFN_TIMEOUT_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @TID_OPFN_TIMEOUT_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %31, %39
  %41 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %42 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32, i32* @TID_OPFN_URG_MASK, align 4
  %46 = and i32 %44, %45
  %47 = load i32, i32* @TID_OPFN_URG_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %40, %48
  %50 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %51 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @TID_OPFN_JKEY_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @TID_OPFN_JKEY_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = or i32 %49, %57
  %59 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %60 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = load i32, i32* @TID_OPFN_MAX_READ_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @TID_OPFN_MAX_READ_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %58, %66
  %68 = load %struct.tid_rdma_params*, %struct.tid_rdma_params** %2, align 8
  %69 = getelementptr inbounds %struct.tid_rdma_params, %struct.tid_rdma_params* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @TID_OPFN_MAX_WRITE_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @TID_OPFN_MAX_WRITE_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %67, %75
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
