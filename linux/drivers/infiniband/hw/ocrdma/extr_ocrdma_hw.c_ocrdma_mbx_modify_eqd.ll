; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_eqd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_modify_eqd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_eq = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ocrdma_modify_eqd_req = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i32 }
%struct.ocrdma_mqe = type { i32 }

@OCRDMA_CMD_MODIFY_EQ_DELAY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_SUBSYS_COMMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_eq*, i32)* @ocrdma_mbx_modify_eqd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_modify_eqd(%struct.ocrdma_dev* %0, %struct.ocrdma_eq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocrdma_dev*, align 8
  %6 = alloca %struct.ocrdma_eq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ocrdma_modify_eqd_req*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %5, align 8
  store %struct.ocrdma_eq* %1, %struct.ocrdma_eq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @OCRDMA_CMD_MODIFY_EQ_DELAY, align 4
  %12 = call %struct.ocrdma_modify_eqd_req* @ocrdma_init_emb_mqe(i32 %11, i32 24)
  store %struct.ocrdma_modify_eqd_req* %12, %struct.ocrdma_modify_eqd_req** %10, align 8
  %13 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %14 = icmp ne %struct.ocrdma_modify_eqd_req* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %85

18:                                               ; preds = %3
  %19 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %20 = getelementptr inbounds %struct.ocrdma_modify_eqd_req, %struct.ocrdma_modify_eqd_req* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = load i32, i32* @OCRDMA_CMD_MODIFY_EQ_DELAY, align 4
  %23 = load i32, i32* @OCRDMA_SUBSYS_COMMON, align 4
  %24 = call i32 @ocrdma_init_mch(i32* %21, i32 %22, i32 %23, i32 24)
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %27 = getelementptr inbounds %struct.ocrdma_modify_eqd_req, %struct.ocrdma_modify_eqd_req* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %74, %18
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %34, i64 %36
  %38 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %42 = getelementptr inbounds %struct.ocrdma_modify_eqd_req, %struct.ocrdma_modify_eqd_req* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %40, i32* %48, align 8
  %49 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %50 = getelementptr inbounds %struct.ocrdma_modify_eqd_req, %struct.ocrdma_modify_eqd_req* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.ocrdma_eq*, %struct.ocrdma_eq** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %57, i64 %59
  %61 = getelementptr inbounds %struct.ocrdma_eq, %struct.ocrdma_eq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %63, 65
  %65 = sdiv i32 %64, 100
  %66 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %67 = getelementptr inbounds %struct.ocrdma_modify_eqd_req, %struct.ocrdma_modify_eqd_req* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 %65, i32* %73, align 8
  br label %74

74:                                               ; preds = %33
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %29

77:                                               ; preds = %29
  %78 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %5, align 8
  %79 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %80 = bitcast %struct.ocrdma_modify_eqd_req* %79 to %struct.ocrdma_mqe*
  %81 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %78, %struct.ocrdma_mqe* %80)
  store i32 %81, i32* %9, align 4
  %82 = load %struct.ocrdma_modify_eqd_req*, %struct.ocrdma_modify_eqd_req** %10, align 8
  %83 = call i32 @kfree(%struct.ocrdma_modify_eqd_req* %82)
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %77, %15
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ocrdma_modify_eqd_req* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i32 @ocrdma_init_mch(i32*, i32, i32, i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_modify_eqd_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
