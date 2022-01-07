; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_modify_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_srq = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_modify_srq }
%struct.pvrdma_cmd_modify_srq = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@IB_SRQ_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PVRDMA_CMD_MODIFY_SRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"could not modify shared receive queue, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2, %struct.ib_udata* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_srq*, align 8
  %7 = alloca %struct.ib_srq_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_udata*, align 8
  %10 = alloca %struct.pvrdma_srq*, align 8
  %11 = alloca %union.pvrdma_cmd_req, align 4
  %12 = alloca %struct.pvrdma_cmd_modify_srq*, align 8
  %13 = alloca %struct.pvrdma_dev*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %6, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %9, align 8
  %15 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %16 = call %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq* %15)
  store %struct.pvrdma_srq* %16, %struct.pvrdma_srq** %10, align 8
  %17 = bitcast %union.pvrdma_cmd_req* %11 to %struct.pvrdma_cmd_modify_srq*
  store %struct.pvrdma_cmd_modify_srq* %17, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %18 = load %struct.ib_srq*, %struct.ib_srq** %6, align 8
  %19 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.pvrdma_dev* @to_vdev(i32 %20)
  store %struct.pvrdma_dev* %21, %struct.pvrdma_dev** %13, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @IB_SRQ_LIMIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %65

29:                                               ; preds = %4
  %30 = load %struct.pvrdma_cmd_modify_srq*, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %31 = call i32 @memset(%struct.pvrdma_cmd_modify_srq* %30, i32 0, i32 16)
  %32 = load i32, i32* @PVRDMA_CMD_MODIFY_SRQ, align 4
  %33 = load %struct.pvrdma_cmd_modify_srq*, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %34 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, %struct.pvrdma_cmd_modify_srq* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %10, align 8
  %37 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pvrdma_cmd_modify_srq*, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %40 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, %struct.pvrdma_cmd_modify_srq* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pvrdma_cmd_modify_srq*, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %45 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, %struct.pvrdma_cmd_modify_srq* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.pvrdma_cmd_modify_srq*, %struct.pvrdma_cmd_modify_srq** %12, align 8
  %49 = getelementptr inbounds %struct.pvrdma_cmd_modify_srq, %struct.pvrdma_cmd_modify_srq* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %13, align 8
  %51 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %50, %union.pvrdma_cmd_req* %11, i32* null, i32 0)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %29
  %55 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %13, align 8
  %56 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %14, align 4
  %60 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %65

63:                                               ; preds = %29
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %54, %26
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_modify_srq*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
