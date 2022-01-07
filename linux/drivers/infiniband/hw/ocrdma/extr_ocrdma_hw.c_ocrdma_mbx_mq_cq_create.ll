; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_mq_cq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_mq_cq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_3__, %struct.ocrdma_create_cq_cmd_rsp* }
%struct.TYPE_3__ = type { i32 }
%struct.ocrdma_create_cq_cmd_rsp = type { i32, i32, i32, i32*, i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_queue_info = type { i32, i32, i64, i32, i32 }
%struct.ocrdma_create_cq_cmd = type { i32, i32, i32, i32*, i64, i32, %struct.TYPE_4__ }

@OCRDMA_CMD_CREATE_CQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_VER2 = common dso_local global i32 0, align 4
@OCRDMA_MIN_Q_PAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_DEF_FLAGS = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info*)* @ocrdma_mbx_mq_cq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_mq_cq_create(%struct.ocrdma_dev* %0, %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info* %2) #0 {
  %4 = alloca %struct.ocrdma_dev*, align 8
  %5 = alloca %struct.ocrdma_queue_info*, align 8
  %6 = alloca %struct.ocrdma_queue_info*, align 8
  %7 = alloca %struct.ocrdma_create_cq_cmd*, align 8
  %8 = alloca %struct.ocrdma_create_cq_cmd_rsp*, align 8
  %9 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %4, align 8
  store %struct.ocrdma_queue_info* %1, %struct.ocrdma_queue_info** %5, align 8
  store %struct.ocrdma_queue_info* %2, %struct.ocrdma_queue_info** %6, align 8
  %10 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %10, i32 0, i32 1
  %12 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %11, align 8
  %13 = bitcast %struct.ocrdma_create_cq_cmd_rsp* %12 to %struct.ocrdma_create_cq_cmd*
  store %struct.ocrdma_create_cq_cmd* %13, %struct.ocrdma_create_cq_cmd** %7, align 8
  %14 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %14, i32 0, i32 1
  %16 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %15, align 8
  store %struct.ocrdma_create_cq_cmd_rsp* %16, %struct.ocrdma_create_cq_cmd_rsp** %8, align 8
  %17 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %18 = bitcast %struct.ocrdma_create_cq_cmd* %17 to %struct.ocrdma_create_cq_cmd_rsp*
  %19 = call i32 @memset(%struct.ocrdma_create_cq_cmd_rsp* %18, i32 0, i32 40)
  %20 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %20, i32 0, i32 6
  %22 = load i32, i32* @OCRDMA_CMD_CREATE_CQ, align 4
  %23 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %24 = call i32 @ocrdma_init_mch(%struct.TYPE_4__* %21, i32 %22, i32 %23, i32 40)
  %25 = load i32, i32* @OCRDMA_CREATE_CQ_VER2, align 4
  %26 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %30 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %33 = sdiv i32 %31, %32
  %34 = load i32, i32* @OCRDMA_CREATE_CQ_PAGE_SIZE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %37 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %39 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %42 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PAGES_4K_SPANNED(i32 %40, i32 %43)
  %45 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @OCRDMA_CREATE_CQ_DEF_FLAGS, align 4
  %50 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %51 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %6, align 8
  %53 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %56 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %55, i32 0, i32 4
  store i64 %54, i64* %56, align 8
  %57 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %58 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.ocrdma_create_cq_cmd, %struct.ocrdma_create_cq_cmd* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %70 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OCRDMA_MIN_Q_PAGE_SIZE, align 4
  %73 = sdiv i32 %71, %72
  %74 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %75 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PAGE_SIZE_4K, align 4
  %78 = call i32 @ocrdma_build_q_pages(i32* %68, i32 %73, i32 %76, i32 %77)
  %79 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %4, align 8
  %80 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.ocrdma_create_cq_cmd*, %struct.ocrdma_create_cq_cmd** %7, align 8
  %84 = bitcast %struct.ocrdma_create_cq_cmd* %83 to %struct.ocrdma_create_cq_cmd_rsp*
  %85 = call i32 @be_roce_mcc_cmd(i32 %82, %struct.ocrdma_create_cq_cmd_rsp* %84, i32 40, i32* null, i32* null)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %3
  %89 = load %struct.ocrdma_create_cq_cmd_rsp*, %struct.ocrdma_create_cq_cmd_rsp** %8, align 8
  %90 = getelementptr inbounds %struct.ocrdma_create_cq_cmd_rsp, %struct.ocrdma_create_cq_cmd_rsp* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @OCRDMA_CREATE_CQ_RSP_CQ_ID_MASK, align 4
  %93 = and i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %96 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.ocrdma_queue_info*, %struct.ocrdma_queue_info** %5, align 8
  %98 = getelementptr inbounds %struct.ocrdma_queue_info, %struct.ocrdma_queue_info* %97, i32 0, i32 1
  store i32 1, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %3
  %100 = load i32, i32* %9, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.ocrdma_create_cq_cmd_rsp*, i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @PAGES_4K_SPANNED(i32, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_cq_cmd_rsp*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
