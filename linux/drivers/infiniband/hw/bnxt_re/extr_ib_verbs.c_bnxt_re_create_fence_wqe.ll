; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_create_fence_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_ib_verbs.c_bnxt_re_create_fence_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_pd = type { %struct.bnxt_re_fence_data }
%struct.bnxt_re_fence_data = type { %struct.TYPE_6__*, i32, i32, i64, %struct.bnxt_qplib_swqe, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.bnxt_qplib_swqe = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i64, i32 }
%struct.TYPE_4__ = type { %struct.ib_mr }
%struct.ib_mr = type { i32 }

@BNXT_QPLIB_SWQE_TYPE_BIND_MW = common dso_local global i32 0, align 4
@BNXT_QPLIB_FENCE_WRID = common dso_local global i32 0, align 4
@BNXT_QPLIB_SWQE_FLAGS_SIGNAL_COMP = common dso_local global i32 0, align 4
@BNXT_QPLIB_SWQE_FLAGS_UC_FENCE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@SQ_BIND_MW_TYPE_TYPE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_pd*)* @bnxt_re_create_fence_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_create_fence_wqe(%struct.bnxt_re_pd* %0) #0 {
  %2 = alloca %struct.bnxt_re_pd*, align 8
  %3 = alloca %struct.bnxt_re_fence_data*, align 8
  %4 = alloca %struct.ib_mr*, align 8
  %5 = alloca %struct.bnxt_qplib_swqe*, align 8
  store %struct.bnxt_re_pd* %0, %struct.bnxt_re_pd** %2, align 8
  %6 = load %struct.bnxt_re_pd*, %struct.bnxt_re_pd** %2, align 8
  %7 = getelementptr inbounds %struct.bnxt_re_pd, %struct.bnxt_re_pd* %6, i32 0, i32 0
  store %struct.bnxt_re_fence_data* %7, %struct.bnxt_re_fence_data** %3, align 8
  %8 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.ib_mr* %11, %struct.ib_mr** %4, align 8
  %12 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %12, i32 0, i32 4
  store %struct.bnxt_qplib_swqe* %13, %struct.bnxt_qplib_swqe** %5, align 8
  %14 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %15 = call i32 @memset(%struct.bnxt_qplib_swqe* %14, i32 0, i32 48)
  %16 = load i32, i32* @BNXT_QPLIB_SWQE_TYPE_BIND_MW, align 4
  %17 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %18 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* @BNXT_QPLIB_FENCE_WRID, align 4
  %20 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @BNXT_QPLIB_SWQE_FLAGS_SIGNAL_COMP, align 4
  %23 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %24 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load i32, i32* @BNXT_QPLIB_SWQE_FLAGS_UC_FENCE, align 4
  %28 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %29 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %33 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.ib_mr*, %struct.ib_mr** %4, align 8
  %36 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %39 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 5
  store i32 %37, i32* %40, align 8
  %41 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %42 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %45 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 4
  store i64 %43, i64* %46, align 8
  %47 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %51 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %54 = call i32 @__from_ib_access_flags(i32 %53)
  %55 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %56 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @SQ_BIND_MW_TYPE_TYPE1, align 4
  %59 = load %struct.bnxt_qplib_swqe*, %struct.bnxt_qplib_swqe** %5, align 8
  %60 = getelementptr inbounds %struct.bnxt_qplib_swqe, %struct.bnxt_qplib_swqe* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ib_inc_rkey(i32 %66)
  %68 = load %struct.bnxt_re_fence_data*, %struct.bnxt_re_fence_data** %3, align 8
  %69 = getelementptr inbounds %struct.bnxt_re_fence_data, %struct.bnxt_re_fence_data* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  ret void
}

declare dso_local i32 @memset(%struct.bnxt_qplib_swqe*, i32, i32) #1

declare dso_local i32 @__from_ib_access_flags(i32) #1

declare dso_local i32 @ib_inc_rkey(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
