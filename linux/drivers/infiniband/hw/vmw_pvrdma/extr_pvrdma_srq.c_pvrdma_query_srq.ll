; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_query_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.pvrdma_dev = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.pvrdma_srq = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_query_srq }
%struct.pvrdma_cmd_query_srq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_query_srq_resp }
%struct.pvrdma_cmd_query_srq_resp = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@PVRDMA_CMD_QUERY_SRQ = common dso_local global i32 0, align 4
@PVRDMA_CMD_QUERY_SRQ_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"could not query shared receive queue, error: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.pvrdma_dev*, align 8
  %7 = alloca %struct.pvrdma_srq*, align 8
  %8 = alloca %union.pvrdma_cmd_req, align 4
  %9 = alloca %union.pvrdma_cmd_resp, align 4
  %10 = alloca %struct.pvrdma_cmd_query_srq*, align 8
  %11 = alloca %struct.pvrdma_cmd_query_srq_resp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %13 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %14 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pvrdma_dev* @to_vdev(i32 %15)
  store %struct.pvrdma_dev* %16, %struct.pvrdma_dev** %6, align 8
  %17 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %18 = call %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq* %17)
  store %struct.pvrdma_srq* %18, %struct.pvrdma_srq** %7, align 8
  %19 = bitcast %union.pvrdma_cmd_req* %8 to %struct.pvrdma_cmd_query_srq*
  store %struct.pvrdma_cmd_query_srq* %19, %struct.pvrdma_cmd_query_srq** %10, align 8
  %20 = bitcast %union.pvrdma_cmd_resp* %9 to %struct.pvrdma_cmd_query_srq_resp*
  store %struct.pvrdma_cmd_query_srq_resp* %20, %struct.pvrdma_cmd_query_srq_resp** %11, align 8
  %21 = load %struct.pvrdma_cmd_query_srq*, %struct.pvrdma_cmd_query_srq** %10, align 8
  %22 = call i32 @memset(%struct.pvrdma_cmd_query_srq* %21, i32 0, i32 8)
  %23 = load i32, i32* @PVRDMA_CMD_QUERY_SRQ, align 4
  %24 = load %struct.pvrdma_cmd_query_srq*, %struct.pvrdma_cmd_query_srq** %10, align 8
  %25 = getelementptr inbounds %struct.pvrdma_cmd_query_srq, %struct.pvrdma_cmd_query_srq* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %7, align 8
  %28 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pvrdma_cmd_query_srq*, %struct.pvrdma_cmd_query_srq** %10, align 8
  %31 = getelementptr inbounds %struct.pvrdma_cmd_query_srq, %struct.pvrdma_cmd_query_srq* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %33 = load i32, i32* @PVRDMA_CMD_QUERY_SRQ_RESP, align 4
  %34 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %32, %union.pvrdma_cmd_req* %8, %union.pvrdma_cmd_resp* %9, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %65

46:                                               ; preds = %2
  %47 = load %struct.pvrdma_cmd_query_srq_resp*, %struct.pvrdma_cmd_query_srq_resp** %11, align 8
  %48 = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, %struct.pvrdma_cmd_query_srq_resp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %52 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = load %struct.pvrdma_cmd_query_srq_resp*, %struct.pvrdma_cmd_query_srq_resp** %11, align 8
  %54 = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, %struct.pvrdma_cmd_query_srq_resp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %58 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.pvrdma_cmd_query_srq_resp*, %struct.pvrdma_cmd_query_srq_resp** %11, align 8
  %60 = getelementptr inbounds %struct.pvrdma_cmd_query_srq_resp, %struct.pvrdma_cmd_query_srq_resp* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %64 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %46, %37
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq*) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_query_srq*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
