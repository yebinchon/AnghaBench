; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_3__, %struct.ocrdma_create_mq_rsp* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_create_mq_rsp = type { i32, i32, i32, %struct.ocrdma_pa*, i32, i32, i32, %struct.TYPE_4__ }
%struct.ocrdma_pa = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_queue_info = type { i32, i32, i32, i32, i32, i32 }
%struct.ocrdma_create_mq_req = type { i32, i32, i32, %struct.ocrdma_pa*, i32, i32, i32, %struct.TYPE_4__ }

@OCRDMA_CMD_CREATE_MQ_EXT = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_CQ_ID_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_ASYNC_CQ_VALID = common dso_local global i32 0, align 4
@OCRDMA_ASYNC_GRP5_EVE_CODE = common dso_local global i32 0, align 4
@OCRDMA_ASYNC_RDMA_EVE_CODE = common dso_local global i32 0, align 4
@OCRDMA_ASYNC_LINK_EVE_CODE = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_RING_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_MQ_VALID = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info*)* @ocrdma_mbx_create_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_mq(%struct.ocrdma_dev* %0, %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_queue_info*, align 8
  %6 = alloca %struct.ocrdma_queue_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocrdma_create_mq_req*, align 8
  %10 = alloca %struct.ocrdma_create_mq_rsp*, align 8
  %11 = alloca %struct.ocrdma_pa*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info** %5, align 8
  store %struct.ocrdma_queue_info* %2, %struct.ocrdma_queue_info** %6, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %13, align 8
  %15 = bitcast %struct.ocrdma_create_mq_rsp* %14 to %struct.ocrdma_create_mq_req*
  store %struct.ocrdma_create_mq_req* %15, %struct.ocrdma_create_mq_req** %9, align 8
  %16 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %17 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %16, i32 0, i32 1
  %18 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %17, align 8
  store %struct.ocrdma_create_mq_rsp* %18, %struct.ocrdma_create_mq_rsp** %10, align 8
  %19 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %20 = bitcast %struct.ocrdma_create_mq_req* %19 to %struct.ocrdma_create_mq_rsp*
  %21 = call i32 @memset(%struct.ocrdma_create_mq_rsp* %20, i32 0, i32 40)
  %22 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %23 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %26 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @PAGES_4K_SPANNED(i32 %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %30 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %29, i32 0, i32 7
  %31 = load i32, i32* @OCRDMA_CMD_CREATE_MQ_EXT, align 4
  %32 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %33 = call i32 @ocrdma_init_mch(%struct.TYPE_4__* %30, i32 %31, i32 %32, i32 40)
  %34 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %35 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %39 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %41 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCRDMA_CREATE_MQ_CQ_ID_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %46 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @OCRDMA_CREATE_MQ_ASYNC_CQ_VALID, align 4
  %50 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %51 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @OCRDMA_ASYNC_GRP5_EVE_CODE, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %55 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @OCRDMA_ASYNC_RDMA_EVE_CODE, align 4
  %57 = call i32 @BIT(i32 %56)
  %58 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %59 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @OCRDMA_ASYNC_LINK_EVE_CODE, align 4
  %63 = call i32 @BIT(i32 %62)
  %64 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %65 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %69 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %72 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %74 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @ocrdma_encoded_q_len(i32 %75)
  %77 = load i32, i32* @OCRDMA_CREATE_MQ_RING_SIZE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %80 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load i32, i32* @OCRDMA_CREATE_MQ_VALID, align 4
  %84 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %85 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %87 = getelementptr inbounds %struct.ocrdma_create_mq_req, %struct.ocrdma_create_mq_req* %86, i32 0, i32 3
  %88 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %87, align 8
  %89 = getelementptr inbounds %struct.ocrdma_pa, %struct.ocrdma_pa* %88, i64 0
  store %struct.ocrdma_pa* %89, %struct.ocrdma_pa** %11, align 8
  %90 = load %struct.ocrdma_pa*, %struct.ocrdma_pa** %11, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %93 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @PAGE_SIZE_4K, align 4
  %96 = call i32 @ocrdma_build_q_pages(%struct.ocrdma_pa* %90, i32 %91, i32 %94, i32 %95)
  %97 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %98 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.ocrdma_create_mq_req*, %struct.ocrdma_create_mq_req** %9, align 8
  %102 = bitcast %struct.ocrdma_create_mq_req* %101 to %struct.ocrdma_create_mq_rsp*
  %103 = call i32 @be_roce_mcc_cmd(i32 %100, %struct.ocrdma_create_mq_rsp* %102, i32 40, i32* null, i32* null)
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %3
  %107 = load %struct.ocrdma_create_mq_rsp*, %struct.ocrdma_create_mq_rsp** %10, align 8
  %108 = getelementptr inbounds %struct.ocrdma_create_mq_rsp, %struct.ocrdma_create_mq_rsp* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %111 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %113 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %3
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @memset(%struct.ocrdma_create_mq_rsp*, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ocrdma_encoded_q_len(i32) #1

declare dso_local i32 @ocrdma_build_q_pages(%struct.ocrdma_pa*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_mq_rsp*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
