; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iwarp_create_kernel_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_iwarp_create_kernel_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (i32, i32)*, %struct.TYPE_6__*, i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*, %struct.qed_chain_ext_pbl*)* }
%struct.qed_chain_ext_pbl = type { i32, i32 }
%struct.qed_rdma_create_qp_out_params = type { i32, i32, i32, i32, i32, i32 }
%struct.qedr_qp = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_rdma_create_qp_in_params = type { i8*, i8* }

@QEDR_SQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QEDR_RQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U32 = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qed_rdma_create_qp_in_params*, i32, i32)* @qedr_iwarp_create_kernel_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_iwarp_create_kernel_qp(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qed_rdma_create_qp_in_params* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qed_rdma_create_qp_in_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_rdma_create_qp_out_params, align 4
  %13 = alloca %struct.qed_chain_ext_pbl, align 4
  %14 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.qed_rdma_create_qp_in_params* %2, %struct.qed_rdma_create_qp_in_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @QEDR_SQE_ELEMENT_SIZE, align 4
  %17 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %18 = call i8* @QED_CHAIN_PAGE_CNT(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %20 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @QEDR_RQE_ELEMENT_SIZE, align 4
  %23 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %24 = call i8* @QED_CHAIN_PAGE_CNT(i32 %21, i32 %22, i32 %23)
  %25 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %26 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %28 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)*, i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)** %30, align 8
  %32 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %33 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %36 = call i32 %31(i32 %34, %struct.qed_rdma_create_qp_in_params* %35, %struct.qed_rdma_create_qp_out_params* %12)
  %37 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %38 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %40 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %5
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %131

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %13, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %13, i32 0, i32 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %54 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (i32, i32, i32, i32, i32, i32, i32*, %struct.qed_chain_ext_pbl*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, %struct.qed_chain_ext_pbl*)** %58, align 8
  %60 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %61 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @QED_CHAIN_USE_TO_PRODUCE, align 4
  %64 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %65 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @QEDR_SQE_ELEMENT_SIZE, align 4
  %68 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %69 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = call i32 %59(i32 %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32* %70, %struct.qed_chain_ext_pbl* %13)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %46
  br label %117

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %13, i32 0, i32 1
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.qed_chain_ext_pbl, %struct.qed_chain_ext_pbl* %13, i32 0, i32 0
  store i32 %80, i32* %81, align 4
  %82 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %83 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (i32, i32, i32, i32, i32, i32, i32*, %struct.qed_chain_ext_pbl*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, %struct.qed_chain_ext_pbl*)** %87, align 8
  %89 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %90 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %93 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %94 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @QEDR_RQE_ELEMENT_SIZE, align 4
  %97 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %98 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i32 %88(i32 %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, i32* %99, %struct.qed_chain_ext_pbl* %13)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %75
  br label %117

104:                                              ; preds = %75
  %105 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %108 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 4
  %109 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %112 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %114 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %115 = call i32 @qedr_set_iwarp_db_info(%struct.qedr_dev* %113, %struct.qedr_qp* %114)
  %116 = load i32, i32* %14, align 4
  store i32 %116, i32* %6, align 4
  br label %131

117:                                              ; preds = %103, %74
  %118 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %119 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load i32 (i32, i32)*, i32 (i32, i32)** %121, align 8
  %123 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %124 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %127 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 %122(i32 %125, i32 %128)
  %130 = load i32, i32* %14, align 4
  store i32 %130, i32* %6, align 4
  br label %131

131:                                              ; preds = %117, %104, %43
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i8* @QED_CHAIN_PAGE_CNT(i32, i32, i32) #1

declare dso_local i32 @qedr_set_iwarp_db_info(%struct.qedr_dev*, %struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
