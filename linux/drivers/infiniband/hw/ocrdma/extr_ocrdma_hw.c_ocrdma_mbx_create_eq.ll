; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_eq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { %struct.TYPE_4__, %struct.ocrdma_create_eq_rsp* }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_create_eq_rsp = type { i32, i32, i32, i32*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ocrdma_eq = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.ocrdma_create_eq_req = type { i32, i32, i32, i32*, i32, %struct.TYPE_6__ }

@OCRDMA_CMD_CREATE_EQ = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@OCRDMA_CREATE_EQ_VALID = common dso_local global i32 0, align 4
@OCRDMA_CREATE_EQ_CNT_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE_4K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_eq*)* @ocrdma_mbx_create_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_create_eq(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1) #0 {
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca %struct.ocrdma_eq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocrdma_create_eq_req*, align 8
  %7 = alloca %struct.ocrdma_create_eq_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %4, align 8
  %8 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %8, i32 0, i32 1
  %10 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %9, align 8
  %11 = bitcast %struct.ocrdma_create_eq_rsp* %10 to %struct.ocrdma_create_eq_req*
  store %struct.ocrdma_create_eq_req* %11, %struct.ocrdma_create_eq_req** %6, align 8
  %12 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %12, i32 0, i32 1
  %14 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %13, align 8
  store %struct.ocrdma_create_eq_rsp* %14, %struct.ocrdma_create_eq_rsp** %7, align 8
  %15 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %16 = bitcast %struct.ocrdma_create_eq_req* %15 to %struct.ocrdma_create_eq_rsp*
  %17 = call i32 @memset(%struct.ocrdma_create_eq_rsp* %16, i32 0, i32 32)
  %18 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %19 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %18, i32 0, i32 5
  %20 = load i32, i32* @OCRDMA_CMD_CREATE_EQ, align 4
  %21 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %22 = call i32 @ocrdma_init_mch(%struct.TYPE_6__* %19, i32 %20, i32 %21, i32 32)
  %23 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %24 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 2, i32* %25, align 4
  %26 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %27 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %26, i32 0, i32 0
  store i32 4, i32* %27, align 8
  %28 = load i32, i32* @OCRDMA_CREATE_EQ_VALID, align 4
  %29 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %30 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @OCRDMA_CREATE_EQ_CNT_SHIFT, align 4
  %32 = shl i32 4, %31
  %33 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %34 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %36 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %40 = getelementptr inbounds %struct.ocrdma_create_eq_req, %struct.ocrdma_create_eq_req* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %43 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PAGE_SIZE_4K, align 4
  %47 = call i32 @ocrdma_build_q_pages(i32* %38, i32 %41, i32 %45, i32 %46)
  %48 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %49 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ocrdma_create_eq_req*, %struct.ocrdma_create_eq_req** %6, align 8
  %53 = bitcast %struct.ocrdma_create_eq_req* %52 to %struct.ocrdma_create_eq_rsp*
  %54 = call i32 @be_roce_mcc_cmd(i32 %51, %struct.ocrdma_create_eq_rsp* %53, i32 32, i32* null, i32* null)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %75, label %57

57:                                               ; preds = %2
  %58 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %7, align 8
  %59 = getelementptr inbounds %struct.ocrdma_create_eq_rsp, %struct.ocrdma_create_eq_rsp* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, 65535
  %62 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %63 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.ocrdma_create_eq_rsp*, %struct.ocrdma_create_eq_rsp** %7, align 8
  %66 = getelementptr inbounds %struct.ocrdma_create_eq_rsp, %struct.ocrdma_create_eq_rsp* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = ashr i32 %67, 16
  %69 = and i32 %68, 65535
  %70 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %71 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %4, align 8
  %73 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %57, %2
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.ocrdma_create_eq_rsp*, i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(%struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_build_q_pages(i32*, i32, i32, i32) #1

declare dso_local i32 @be_roce_mcc_cmd(i32, %struct.ocrdma_create_eq_rsp*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
