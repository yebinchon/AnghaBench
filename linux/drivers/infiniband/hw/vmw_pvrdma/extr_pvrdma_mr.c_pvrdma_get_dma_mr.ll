; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.pvrdma_user_mr = type { %struct.ib_mr, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_create_mr }
%struct.pvrdma_cmd_create_mr = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.pvrdma_cmd_resp = type { %struct.pvrdma_cmd_create_mr_resp }
%struct.pvrdma_cmd_create_mr_resp = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unsupported dma mr access flags %#x\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_MR = common dso_local global i32 0, align 4
@PVRDMA_MR_FLAG_DMA = common dso_local global i32 0, align 4
@PVRDMA_CMD_CREATE_MR_RESP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"could not get DMA mem region, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @pvrdma_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvrdma_dev*, align 8
  %7 = alloca %struct.pvrdma_user_mr*, align 8
  %8 = alloca %union.pvrdma_cmd_req, align 4
  %9 = alloca %union.pvrdma_cmd_resp, align 4
  %10 = alloca %struct.pvrdma_cmd_create_mr*, align 8
  %11 = alloca %struct.pvrdma_cmd_create_mr_resp*, align 8
  %12 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %14 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pvrdma_dev* @to_vdev(i32 %15)
  store %struct.pvrdma_dev* %16, %struct.pvrdma_dev** %6, align 8
  %17 = bitcast %union.pvrdma_cmd_req* %8 to %struct.pvrdma_cmd_create_mr*
  store %struct.pvrdma_cmd_create_mr* %17, %struct.pvrdma_cmd_create_mr** %10, align 8
  %18 = bitcast %union.pvrdma_cmd_resp* %9 to %struct.pvrdma_cmd_create_mr_resp*
  store %struct.pvrdma_cmd_create_mr_resp* %18, %struct.pvrdma_cmd_create_mr_resp** %11, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %2
  %25 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %26 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.ib_mr* @ERR_PTR(i32 %32)
  store %struct.ib_mr* %33, %struct.ib_mr** %3, align 8
  br label %99

34:                                               ; preds = %2
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.pvrdma_user_mr* @kzalloc(i32 12, i32 %35)
  store %struct.pvrdma_user_mr* %36, %struct.pvrdma_user_mr** %7, align 8
  %37 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %38 = icmp ne %struct.pvrdma_user_mr* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.ib_mr* @ERR_PTR(i32 %41)
  store %struct.ib_mr* %42, %struct.ib_mr** %3, align 8
  br label %99

43:                                               ; preds = %34
  %44 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %10, align 8
  %45 = call i32 @memset(%struct.pvrdma_cmd_create_mr* %44, i32 0, i32 16)
  %46 = load i32, i32* @PVRDMA_CMD_CREATE_MR, align 4
  %47 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %10, align 8
  %48 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %51 = call %struct.TYPE_8__* @to_vpd(%struct.ib_pd* %50)
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %10, align 8
  %55 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %10, align 8
  %58 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @PVRDMA_MR_FLAG_DMA, align 4
  %60 = load %struct.pvrdma_cmd_create_mr*, %struct.pvrdma_cmd_create_mr** %10, align 8
  %61 = getelementptr inbounds %struct.pvrdma_cmd_create_mr, %struct.pvrdma_cmd_create_mr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %63 = load i32, i32* @PVRDMA_CMD_CREATE_MR_RESP, align 4
  %64 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %62, %union.pvrdma_cmd_req* %8, %union.pvrdma_cmd_resp* %9, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %43
  %68 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %69 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @dev_warn(i32* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %75 = call i32 @kfree(%struct.pvrdma_user_mr* %74)
  %76 = load i32, i32* %12, align 4
  %77 = call %struct.ib_mr* @ERR_PTR(i32 %76)
  store %struct.ib_mr* %77, %struct.ib_mr** %3, align 8
  br label %99

78:                                               ; preds = %43
  %79 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %11, align 8
  %80 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %83 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %11, align 8
  %86 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %89 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  %91 = load %struct.pvrdma_cmd_create_mr_resp*, %struct.pvrdma_cmd_create_mr_resp** %11, align 8
  %92 = getelementptr inbounds %struct.pvrdma_cmd_create_mr_resp, %struct.pvrdma_cmd_create_mr_resp* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %95 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %7, align 8
  %98 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %97, i32 0, i32 0
  store %struct.ib_mr* %98, %struct.ib_mr** %3, align 8
  br label %99

99:                                               ; preds = %78, %67, %39, %24
  %100 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %100
}

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local %struct.pvrdma_user_mr* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_create_mr*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @to_vpd(%struct.ib_pd*) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, %union.pvrdma_cmd_resp*, i32) #1

declare dso_local i32 @kfree(%struct.pvrdma_user_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
