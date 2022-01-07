; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_rqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_build_rqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_hdr_wqe = type { i32, i32, i64 }
%struct.ib_recv_wr = type { i32, i32 }
%struct.ocrdma_sge = type { i32 }

@OCRDMA_WQE_STRIDE = common dso_local global i32 0, align 4
@OCRDMA_WQE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_FLAG_SIG = common dso_local global i32 0, align 4
@OCRDMA_WQE_FLAGS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_TYPE_LKEY = common dso_local global i32 0, align 4
@OCRDMA_WQE_TYPE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_hdr_wqe*, %struct.ib_recv_wr*, i32)* @ocrdma_build_rqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_build_rqe(%struct.ocrdma_hdr_wqe* %0, %struct.ib_recv_wr* %1, i32 %2) #0 {
  %4 = alloca %struct.ocrdma_hdr_wqe*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_sge*, align 8
  store %struct.ocrdma_hdr_wqe* %0, %struct.ocrdma_hdr_wqe** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %10 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %15 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %18, 16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %7, align 4
  br label %22

21:                                               ; preds = %3
  store i32 20, i32* %7, align 4
  br label %22

22:                                               ; preds = %21, %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @OCRDMA_WQE_STRIDE, align 4
  %25 = sdiv i32 %23, %24
  %26 = load i32, i32* @OCRDMA_WQE_SIZE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %29 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @OCRDMA_FLAG_SIG, align 4
  %31 = load i32, i32* @OCRDMA_WQE_FLAGS_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %34 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* @OCRDMA_TYPE_LKEY, align 4
  %38 = load i32, i32* @OCRDMA_WQE_TYPE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %41 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %45 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %48 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %50 = getelementptr inbounds %struct.ocrdma_hdr_wqe, %struct.ocrdma_hdr_wqe* %49, i64 1
  %51 = bitcast %struct.ocrdma_hdr_wqe* %50 to %struct.ocrdma_sge*
  store %struct.ocrdma_sge* %51, %struct.ocrdma_sge** %8, align 8
  %52 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %53 = load %struct.ocrdma_sge*, %struct.ocrdma_sge** %8, align 8
  %54 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %55 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %58 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ocrdma_build_sges(%struct.ocrdma_hdr_wqe* %52, %struct.ocrdma_sge* %53, i32 %56, i32 %59)
  %61 = load %struct.ocrdma_hdr_wqe*, %struct.ocrdma_hdr_wqe** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe* %61, i32 %62)
  ret void
}

declare dso_local i32 @ocrdma_build_sges(%struct.ocrdma_hdr_wqe*, %struct.ocrdma_sge*, i32, i32) #1

declare dso_local i32 @ocrdma_cpu_to_le32(%struct.ocrdma_hdr_wqe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
