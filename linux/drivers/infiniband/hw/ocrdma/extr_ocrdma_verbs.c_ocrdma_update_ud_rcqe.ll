; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_ud_rcqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_verbs.c_ocrdma_update_ud_rcqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ib_wc = type { i32, i32, i32, i32, i64 }
%struct.ocrdma_cqe = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@OCRDMA_CQE_UD_STATUS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_STATUS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_SRCQP_MASK = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_XFER_LEN_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_XFER_LEN_MASK = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_L3TYPE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CQE_UD_L3TYPE_MASK = common dso_local global i32 0, align 4
@IB_WC_WITH_NETWORK_HDR_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ib_wc*, %struct.ocrdma_cqe*)* @ocrdma_update_ud_rcqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_update_ud_rcqe(%struct.ocrdma_dev* %0, %struct.ib_wc* %1, %struct.ocrdma_cqe* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  %6 = alloca %struct.ocrdma_cqe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  store %struct.ocrdma_cqe* %2, %struct.ocrdma_cqe** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %10 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le32_to_cpu(i32 %11)
  %13 = load i32, i32* @OCRDMA_CQE_UD_STATUS_MASK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @OCRDMA_CQE_UD_STATUS_SHIFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %18 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  %21 = load i32, i32* @OCRDMA_CQE_SRCQP_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %24 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %26 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @IB_WC_GRH, align 4
  %28 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %29 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %31 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load i32, i32* @OCRDMA_CQE_UD_XFER_LEN_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @OCRDMA_CQE_UD_XFER_LEN_MASK, align 4
  %38 = and i32 %36, %37
  %39 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %40 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %42 = call i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %3
  %45 = load %struct.ocrdma_cqe*, %struct.ocrdma_cqe** %6, align 8
  %46 = getelementptr inbounds %struct.ocrdma_cqe, %struct.ocrdma_cqe* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = load i32, i32* @OCRDMA_CQE_UD_L3TYPE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = load i32, i32* @OCRDMA_CQE_UD_L3TYPE_MASK, align 4
  %53 = and i32 %51, %52
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @IB_WC_WITH_NETWORK_HDR_TYPE, align 4
  %55 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %56 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %61 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %44, %3
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @ocrdma_is_udp_encap_supported(%struct.ocrdma_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
