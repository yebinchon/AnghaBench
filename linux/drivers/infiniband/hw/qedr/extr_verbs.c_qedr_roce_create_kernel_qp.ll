; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_roce_create_kernel_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_roce_create_kernel_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)*, %struct.TYPE_6__* }
%struct.qed_rdma_create_qp_out_params = type { i32, i32 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)* }
%struct.qedr_qp = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_rdma_create_qp_in_params = type { i8*, i8*, i8*, i8* }

@QED_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U32 = common dso_local global i32 0, align 4
@QEDR_SQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@QEDR_RQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.qed_rdma_create_qp_in_params*, i32, i32)* @qedr_roce_create_kernel_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_roce_create_kernel_qp(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.qed_rdma_create_qp_in_params* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.qed_rdma_create_qp_in_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.qed_rdma_create_qp_out_params, align 4
  %13 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.qed_rdma_create_qp_in_params* %2, %struct.qed_rdma_create_qp_in_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %15 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)** %19, align 8
  %21 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %22 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @QED_CHAIN_USE_TO_PRODUCE, align 4
  %25 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %26 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @QEDR_SQE_ELEMENT_SIZE, align 4
  %29 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %30 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 %20(i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32* %31, i32* null)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %118

37:                                               ; preds = %5
  %38 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %39 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i8* @qed_chain_get_page_cnt(i32* %40)
  %42 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %43 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  %44 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %45 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = call i8* @qed_chain_get_pbl_phys(i32* %46)
  %48 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %49 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %51 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %50, i32 0, i32 1
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)** %55, align 8
  %57 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %58 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %61 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %62 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @QEDR_RQE_ELEMENT_SIZE, align 4
  %65 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %66 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i32 %56(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32* %67, i32* null)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %37
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %6, align 4
  br label %118

73:                                               ; preds = %37
  %74 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %75 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = call i8* @qed_chain_get_page_cnt(i32* %76)
  %78 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %79 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %81 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = call i8* @qed_chain_get_pbl_phys(i32* %82)
  %84 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %85 = getelementptr inbounds %struct.qed_rdma_create_qp_in_params, %struct.qed_rdma_create_qp_in_params* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %87 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)*, i32 (i32, %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_out_params*)** %89, align 8
  %91 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %92 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.qed_rdma_create_qp_in_params*, %struct.qed_rdma_create_qp_in_params** %9, align 8
  %95 = call i32 %90(i32 %93, %struct.qed_rdma_create_qp_in_params* %94, %struct.qed_rdma_create_qp_out_params* %12)
  %96 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %97 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %99 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %73
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %6, align 4
  br label %118

105:                                              ; preds = %73
  %106 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %109 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = getelementptr inbounds %struct.qed_rdma_create_qp_out_params, %struct.qed_rdma_create_qp_out_params* %12, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %113 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %115 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %116 = call i32 @qedr_set_roce_db_info(%struct.qedr_dev* %114, %struct.qedr_qp* %115)
  %117 = load i32, i32* %13, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %105, %102, %71, %35
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i8* @qed_chain_get_page_cnt(i32*) #1

declare dso_local i8* @qed_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @qedr_set_roce_db_info(%struct.qedr_dev*, %struct.qedr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
