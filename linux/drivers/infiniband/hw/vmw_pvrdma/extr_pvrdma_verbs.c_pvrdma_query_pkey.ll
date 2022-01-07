; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_verbs.c_pvrdma_query_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_query_pkey }
%struct.pvrdma_cmd_query_pkey = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@PVRDMA_CMD_QUERY_PKEY = common dso_local global i32 0, align 4
@PVRDMA_CMD_QUERY_PKEY_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not query pkey, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_query_pkey(%struct.ib_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.pvrdma_cmd_req, align 4
  %12 = alloca %union.pvrdma_cmd_resp, align 4
  %13 = alloca %struct.pvrdma_cmd_query_pkey*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = bitcast %union.pvrdma_cmd_req* %11 to %struct.pvrdma_cmd_query_pkey*
  store %struct.pvrdma_cmd_query_pkey* %14, %struct.pvrdma_cmd_query_pkey** %13, align 8
  %15 = load %struct.pvrdma_cmd_query_pkey*, %struct.pvrdma_cmd_query_pkey** %13, align 8
  %16 = call i32 @memset(%struct.pvrdma_cmd_query_pkey* %15, i32 0, i32 12)
  %17 = load i32, i32* @PVRDMA_CMD_QUERY_PKEY, align 4
  %18 = load %struct.pvrdma_cmd_query_pkey*, %struct.pvrdma_cmd_query_pkey** %13, align 8
  %19 = getelementptr inbounds %struct.pvrdma_cmd_query_pkey, %struct.pvrdma_cmd_query_pkey* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.pvrdma_cmd_query_pkey*, %struct.pvrdma_cmd_query_pkey** %13, align 8
  %23 = getelementptr inbounds %struct.pvrdma_cmd_query_pkey, %struct.pvrdma_cmd_query_pkey* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.pvrdma_cmd_query_pkey*, %struct.pvrdma_cmd_query_pkey** %13, align 8
  %26 = getelementptr inbounds %struct.pvrdma_cmd_query_pkey, %struct.pvrdma_cmd_query_pkey* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %28 = call %struct.TYPE_9__* @to_vdev(%struct.ib_device* %27)
  %29 = load i32, i32* @PVRDMA_CMD_QUERY_PKEY_RESP, align 4
  %30 = call i32 @pvrdma_cmd_post(%struct.TYPE_9__* %28, %union.pvrdma_cmd_req* %11, %union.pvrdma_cmd_resp* %12, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %4
  %34 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %35 = call %struct.TYPE_9__* @to_vdev(%struct.ib_device* %34)
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %5, align 4
  br label %47

42:                                               ; preds = %4
  %43 = bitcast %union.pvrdma_cmd_resp* %12 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %42, %33
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.pvrdma_cmd_query_pkey*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.TYPE_9__*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local %struct.TYPE_9__* @to_vdev(%struct.ib_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
