; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_destroy_srq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_srq.c_pvrdma_destroy_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_srq = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_destroy_srq }
%struct.pvrdma_cmd_destroy_srq = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PVRDMA_CMD_DESTROY_SRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"destroy shared receive queue failed, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_destroy_srq(%struct.ib_srq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_srq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.pvrdma_srq*, align 8
  %6 = alloca %union.pvrdma_cmd_req, align 4
  %7 = alloca %struct.pvrdma_cmd_destroy_srq*, align 8
  %8 = alloca %struct.pvrdma_dev*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %11 = call %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq* %10)
  store %struct.pvrdma_srq* %11, %struct.pvrdma_srq** %5, align 8
  %12 = bitcast %union.pvrdma_cmd_req* %6 to %struct.pvrdma_cmd_destroy_srq*
  store %struct.pvrdma_cmd_destroy_srq* %12, %struct.pvrdma_cmd_destroy_srq** %7, align 8
  %13 = load %struct.ib_srq*, %struct.ib_srq** %3, align 8
  %14 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pvrdma_dev* @to_vdev(i32 %15)
  store %struct.pvrdma_dev* %16, %struct.pvrdma_dev** %8, align 8
  %17 = load %struct.pvrdma_cmd_destroy_srq*, %struct.pvrdma_cmd_destroy_srq** %7, align 8
  %18 = call i32 @memset(%struct.pvrdma_cmd_destroy_srq* %17, i32 0, i32 8)
  %19 = load i32, i32* @PVRDMA_CMD_DESTROY_SRQ, align 4
  %20 = load %struct.pvrdma_cmd_destroy_srq*, %struct.pvrdma_cmd_destroy_srq** %7, align 8
  %21 = getelementptr inbounds %struct.pvrdma_cmd_destroy_srq, %struct.pvrdma_cmd_destroy_srq* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %5, align 8
  %24 = getelementptr inbounds %struct.pvrdma_srq, %struct.pvrdma_srq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pvrdma_cmd_destroy_srq*, %struct.pvrdma_cmd_destroy_srq** %7, align 8
  %27 = getelementptr inbounds %struct.pvrdma_cmd_destroy_srq, %struct.pvrdma_cmd_destroy_srq* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %29 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %28, %union.pvrdma_cmd_req* %6, i32* null, i32 0)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %34 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dev_warn(i32* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %32, %2
  %40 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %41 = load %struct.pvrdma_srq*, %struct.pvrdma_srq** %5, align 8
  %42 = call i32 @pvrdma_free_srq(%struct.pvrdma_dev* %40, %struct.pvrdma_srq* %41)
  ret void
}

declare dso_local %struct.pvrdma_srq* @to_vsrq(%struct.ib_srq*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_destroy_srq*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pvrdma_free_srq(%struct.pvrdma_dev*, %struct.pvrdma_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
