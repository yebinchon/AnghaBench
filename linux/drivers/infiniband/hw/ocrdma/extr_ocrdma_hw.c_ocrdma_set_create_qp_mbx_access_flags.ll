; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_mbx_access_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_set_create_qp_mbx_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_qp = type { i32 }

@OCRDMA_QP_INB_RD = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_INB_RDEN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_INB_WR = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_INB_WREN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_MW_BIND = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_BIND_MEMWIN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_LKEY0 = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_ZERO_LKEYEN_MASK = common dso_local global i32 0, align 4
@OCRDMA_QP_FAST_REG = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_REQ_FMR_EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_qp*)* @ocrdma_set_create_qp_mbx_access_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_set_create_qp_mbx_access_flags(%struct.ocrdma_qp* %0) #0 {
  %2 = alloca %struct.ocrdma_qp*, align 8
  %3 = alloca i32, align 4
  store %struct.ocrdma_qp* %0, %struct.ocrdma_qp** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %5 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @OCRDMA_QP_INB_RD, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @OCRDMA_CREATE_QP_REQ_INB_RDEN_MASK, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %16 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OCRDMA_QP_INB_WR, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @OCRDMA_CREATE_QP_REQ_INB_WREN_MASK, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %14
  %26 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %27 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @OCRDMA_QP_MW_BIND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load i32, i32* @OCRDMA_CREATE_QP_REQ_BIND_MEMWIN_MASK, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %38 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCRDMA_QP_LKEY0, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @OCRDMA_CREATE_QP_REQ_ZERO_LKEYEN_MASK, align 4
  %45 = load i32, i32* %3, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %2, align 8
  %49 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @OCRDMA_QP_FAST_REG, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @OCRDMA_CREATE_QP_REQ_FMR_EN_MASK, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %47
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
