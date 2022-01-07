; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_ok_cqe_resp_wc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_set_ok_cqe_resp_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cqe_responder = type { i32, i32, i32 }
%struct.ib_wc = type { i32, %struct.TYPE_2__, i32, i8*, i32 }
%struct.TYPE_2__ = type { i8* }

@IB_WC_SUCCESS = common dso_local global i32 0, align 4
@QEDR_RESP_IMM = common dso_local global i32 0, align 4
@IB_WC_WITH_IMM = common dso_local global i32 0, align 4
@QEDR_RESP_RDMA = common dso_local global i32 0, align 4
@IB_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@QEDR_RESP_INV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_WC_WITH_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cqe_responder*, %struct.ib_wc*)* @qedr_set_ok_cqe_resp_wc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_set_ok_cqe_resp_wc(%struct.rdma_cqe_responder* %0, %struct.ib_wc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cqe_responder*, align 8
  %5 = alloca %struct.ib_wc*, align 8
  store %struct.rdma_cqe_responder* %0, %struct.rdma_cqe_responder** %4, align 8
  store %struct.ib_wc* %1, %struct.ib_wc** %5, align 8
  %6 = load i32, i32* @IB_WC_SUCCESS, align 4
  %7 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %8 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %7, i32 0, i32 4
  store i32 %6, i32* %8, align 8
  %9 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %10 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @le32_to_cpu(i32 %11)
  %13 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %14 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %13, i32 0, i32 3
  store i8* %12, i8** %14, align 8
  %15 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %16 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QEDR_RESP_IMM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %56

21:                                               ; preds = %2
  %22 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %23 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @le32_to_cpu(i32 %24)
  %26 = call i8* @cpu_to_be32(i8* %25)
  %27 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %28 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i8* %26, i8** %29, align 8
  %30 = load i32, i32* @IB_WC_WITH_IMM, align 4
  %31 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %32 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %36 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @QEDR_RESP_RDMA, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %21
  %42 = load i32, i32* @IB_WC_RECV_RDMA_WITH_IMM, align 4
  %43 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %44 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %41, %21
  %46 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %47 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @QEDR_RESP_INV, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %99

55:                                               ; preds = %45
  br label %98

56:                                               ; preds = %2
  %57 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %58 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @QEDR_RESP_INV, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %86

63:                                               ; preds = %56
  %64 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %65 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le32_to_cpu(i32 %66)
  %68 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %69 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  %71 = load i32, i32* @IB_WC_WITH_INVALIDATE, align 4
  %72 = load %struct.ib_wc*, %struct.ib_wc** %5, align 8
  %73 = getelementptr inbounds %struct.ib_wc, %struct.ib_wc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %77 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @QEDR_RESP_RDMA, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %63
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %99

85:                                               ; preds = %63
  br label %97

86:                                               ; preds = %56
  %87 = load %struct.rdma_cqe_responder*, %struct.rdma_cqe_responder** %4, align 8
  %88 = getelementptr inbounds %struct.rdma_cqe_responder, %struct.rdma_cqe_responder* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @QEDR_RESP_RDMA, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %99

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97, %55
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %93, %82, %52
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
