; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_srq_kernel_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_alloc_srq_kernel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_srq = type { %struct.qedr_srq_hwq_info }
%struct.qedr_srq_hwq_info = type { i32, i32, i8*, i32 }
%struct.qedr_dev = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)* }
%struct.ib_srq_init_attr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"create srq: failed to allocate dma memory for producer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RDMA_MAX_SRQ_WQE_SIZE = common dso_local global i32 0, align 4
@QED_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@QED_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@QED_CHAIN_CNT_TYPE_U32 = common dso_local global i32 0, align 4
@QEDR_SRQ_WQE_ELEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_srq*, %struct.qedr_dev*, %struct.ib_srq_init_attr*)* @qedr_alloc_srq_kernel_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_alloc_srq_kernel_params(%struct.qedr_srq* %0, %struct.qedr_dev* %1, %struct.ib_srq_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qedr_srq*, align 8
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.ib_srq_init_attr*, align 8
  %8 = alloca %struct.qedr_srq_hwq_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.qedr_srq* %0, %struct.qedr_srq** %5, align 8
  store %struct.qedr_dev* %1, %struct.qedr_dev** %6, align 8
  store %struct.ib_srq_init_attr* %2, %struct.ib_srq_init_attr** %7, align 8
  %13 = load %struct.qedr_srq*, %struct.qedr_srq** %5, align 8
  %14 = getelementptr inbounds %struct.qedr_srq, %struct.qedr_srq* %13, i32 0, i32 0
  store %struct.qedr_srq_hwq_info* %14, %struct.qedr_srq_hwq_info** %8, align 8
  %15 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(i32* %18, i32 4, i32* %9, i32 %19)
  store i8* %20, i8** %11, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %25 = call i32 @DP_ERR(%struct.qedr_dev* %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %75

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %8, align 8
  %31 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %8, align 8
  %34 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %36 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RDMA_MAX_SRQ_WQE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %42 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)*, i32 (i32, i32, i32, i32, i32, i32, i32*, i32*)** %46, align 8
  %48 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %49 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @QED_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %52 = load i32, i32* @QED_CHAIN_MODE_PBL, align 4
  %53 = load i32, i32* @QED_CHAIN_CNT_TYPE_U32, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @QEDR_SRQ_WQE_ELEM_SIZE, align 4
  %56 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %8, align 8
  %57 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %56, i32 0, i32 1
  %58 = call i32 %47(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32* %57, i32* null)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %28
  br label %66

62:                                               ; preds = %28
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.qedr_srq_hwq_info*, %struct.qedr_srq_hwq_info** %8, align 8
  %65 = getelementptr inbounds %struct.qedr_srq_hwq_info, %struct.qedr_srq_hwq_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %75

66:                                               ; preds = %61
  %67 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %68 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i8*, i8** %11, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @dma_free_coherent(i32* %70, i32 4, i8* %71, i32 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %62, %23
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
