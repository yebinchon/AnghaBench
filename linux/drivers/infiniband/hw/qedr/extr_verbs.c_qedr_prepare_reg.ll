; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_prepare_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_qp = type { %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { %struct.qedr_mr* }
%struct.qedr_mr = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.rdma_sq_fmr_wqe_1st = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.ib_reg_wr = type { i32, i32, i32 }
%struct.rdma_sq_fmr_wqe_2nd = type { %struct.TYPE_10__, i32, i64, i64, i64 }
%struct.TYPE_10__ = type { i8*, i8* }

@RDMA_SQ_FMR_WQE_2ND_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_ENABLE_ATOMIC = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_LOCAL_READ = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_qp*, %struct.rdma_sq_fmr_wqe_1st*, %struct.ib_reg_wr*)* @qedr_prepare_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_prepare_reg(%struct.qedr_qp* %0, %struct.rdma_sq_fmr_wqe_1st* %1, %struct.ib_reg_wr* %2) #0 {
  %4 = alloca %struct.qedr_qp*, align 8
  %5 = alloca %struct.rdma_sq_fmr_wqe_1st*, align 8
  %6 = alloca %struct.ib_reg_wr*, align 8
  %7 = alloca %struct.qedr_mr*, align 8
  %8 = alloca %struct.rdma_sq_fmr_wqe_2nd*, align 8
  store %struct.qedr_qp* %0, %struct.qedr_qp** %4, align 8
  store %struct.rdma_sq_fmr_wqe_1st* %1, %struct.rdma_sq_fmr_wqe_1st** %5, align 8
  store %struct.ib_reg_wr* %2, %struct.ib_reg_wr** %6, align 8
  %9 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %10 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.qedr_mr* @get_qedr_mr(i32 %11)
  store %struct.qedr_mr* %12, %struct.qedr_mr** %7, align 8
  %13 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %14 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = call i64 @qed_chain_produce(i32* %15)
  %17 = inttoptr i64 %16 to %struct.rdma_sq_fmr_wqe_2nd*
  store %struct.rdma_sq_fmr_wqe_2nd* %17, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %18 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %19 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @upper_32_bits(i32 %21)
  %23 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i8* %22, i8** %25, align 8
  %26 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %27 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i8* @lower_32_bits(i32 %29)
  %31 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %5, align 8
  %32 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %35 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rdma_sq_fmr_wqe_1st*, %struct.rdma_sq_fmr_wqe_1st** %5, align 8
  %38 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_1st, %struct.rdma_sq_fmr_wqe_1st* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %40 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %39, i32 0, i32 4
  store i64 0, i64* %40, align 8
  %41 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %42 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_REMOTE_READ, align 4
  %45 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %46 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @SET_FIELD2(i64 %43, i32 %44, i32 %53)
  %55 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %56 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_REMOTE_WRITE, align 4
  %59 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %60 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @SET_FIELD2(i64 %57, i32 %58, i32 %67)
  %69 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %70 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_ENABLE_ATOMIC, align 4
  %73 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %74 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @SET_FIELD2(i64 %71, i32 %72, i32 %81)
  %83 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %84 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_LOCAL_READ, align 4
  %87 = call i32 @SET_FIELD2(i64 %85, i32 %86, i32 1)
  %88 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %89 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_LOCAL_WRITE, align 4
  %92 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %6, align 8
  %93 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @SET_FIELD2(i64 %90, i32 %91, i32 %100)
  %102 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %103 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %102, i32 0, i32 3
  store i64 0, i64* %103, align 8
  %104 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %105 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i32, i32* @RDMA_SQ_FMR_WQE_2ND_PAGE_SIZE_LOG, align 4
  %108 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %109 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ilog2(i32 %111)
  %113 = sub nsw i32 %112, 12
  %114 = call i32 @SET_FIELD2(i64 %106, i32 %107, i32 %113)
  %115 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %116 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %118 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %122 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 8
  %123 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %124 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @upper_32_bits(i32 %128)
  %130 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %131 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  store i8* %129, i8** %132, align 8
  %133 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %134 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @lower_32_bits(i32 %138)
  %140 = load %struct.rdma_sq_fmr_wqe_2nd*, %struct.rdma_sq_fmr_wqe_2nd** %8, align 8
  %141 = getelementptr inbounds %struct.rdma_sq_fmr_wqe_2nd, %struct.rdma_sq_fmr_wqe_2nd* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.qedr_mr*, %struct.qedr_mr** %7, align 8
  %144 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %145 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %144, i32 0, i32 1
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %145, align 8
  %147 = load %struct.qedr_qp*, %struct.qedr_qp** %4, align 8
  %148 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store %struct.qedr_mr* %143, %struct.qedr_mr** %152, align 8
  ret i32 0
}

declare dso_local %struct.qedr_mr* @get_qedr_mr(i32) #1

declare dso_local i64 @qed_chain_produce(i32*) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i32 @SET_FIELD2(i64, i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
