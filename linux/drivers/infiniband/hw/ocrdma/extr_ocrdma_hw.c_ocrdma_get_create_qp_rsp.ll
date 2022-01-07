; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_create_qp_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_get_create_qp_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_create_qp_rsp = type { i32, i32, i32, i32, i32 }
%struct.ocrdma_qp = type { i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ib_qp_init_attr = type { i32 }

@OCRDMA_CREATE_QP_RSP_QP_ID_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_RQ_ID_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_SQ_ID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_MAX_IRD_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_MAX_ORD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_DPP_ENABLED_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_DPP_CREDITS_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_DPP_CREDITS_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_DPP_PAGE_OFFSET_MASK = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_DPP_PAGE_OFFSET_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_QP_RSP_MAX_WQE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocrdma_create_qp_rsp*, %struct.ocrdma_qp*, %struct.ib_qp_init_attr*, i32*, i32*)* @ocrdma_get_create_qp_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocrdma_get_create_qp_rsp(%struct.ocrdma_create_qp_rsp* %0, %struct.ocrdma_qp* %1, %struct.ib_qp_init_attr* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ocrdma_create_qp_rsp*, align 8
  %7 = alloca %struct.ocrdma_qp*, align 8
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ocrdma_create_qp_rsp* %0, %struct.ocrdma_create_qp_rsp** %6, align 8
  store %struct.ocrdma_qp* %1, %struct.ocrdma_qp** %7, align 8
  store %struct.ib_qp_init_attr* %2, %struct.ib_qp_init_attr** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @OCRDMA_CREATE_QP_RSP_QP_ID_MASK, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %19 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @OCRDMA_CREATE_QP_RSP_RQ_ID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %26 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %29 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @OCRDMA_CREATE_QP_RSP_SQ_ID_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %34 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %37 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @OCRDMA_CREATE_QP_RSP_MAX_IRD_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %42 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %44 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @OCRDMA_CREATE_QP_RSP_MAX_ORD_SHIFT, align 4
  %47 = ashr i32 %45, %46
  %48 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %49 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %51 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %50, i32 0, i32 3
  store i32 0, i32* %51, align 4
  %52 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %53 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @OCRDMA_CREATE_QP_RSP_DPP_ENABLED_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %5
  %59 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %60 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  %61 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %62 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @OCRDMA_CREATE_QP_RSP_DPP_CREDITS_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @OCRDMA_CREATE_QP_RSP_DPP_CREDITS_SHIFT, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32*, i32** %10, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %70 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @OCRDMA_CREATE_QP_RSP_DPP_PAGE_OFFSET_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @OCRDMA_CREATE_QP_RSP_DPP_PAGE_OFFSET_SHIFT, align 4
  %75 = ashr i32 %73, %74
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %58, %5
  %78 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %79 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @OCRDMA_CREATE_QP_RSP_MAX_WQE_SHIFT, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = shl i32 1, %83
  store i32 %84, i32* %11, align 4
  %85 = load %struct.ocrdma_create_qp_rsp*, %struct.ocrdma_create_qp_rsp** %6, align 8
  %86 = getelementptr inbounds %struct.ocrdma_create_qp_rsp, %struct.ocrdma_create_qp_rsp* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 1, %87
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %91 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = sub nsw i32 %93, 1
  %95 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %96 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %95, i32 0, i32 5
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 4
  %98 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %99 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %112, label %102

102:                                              ; preds = %77
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %105 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %12, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.ocrdma_qp*, %struct.ocrdma_qp** %7, align 8
  %110 = getelementptr inbounds %struct.ocrdma_qp, %struct.ocrdma_qp* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %102, %77
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
