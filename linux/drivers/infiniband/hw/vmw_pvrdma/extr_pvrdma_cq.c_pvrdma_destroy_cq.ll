; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_cq.c_pvrdma_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_cq = type { i64 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_destroy_cq }
%struct.pvrdma_cmd_destroy_cq = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.pvrdma_dev = type { i32, i32, i32**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PVRDMA_CMD_DESTROY_CQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not destroy completion queue, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pvrdma_destroy_cq(%struct.ib_cq* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.pvrdma_cq*, align 8
  %6 = alloca %union.pvrdma_cmd_req, align 8
  %7 = alloca %struct.pvrdma_cmd_destroy_cq*, align 8
  %8 = alloca %struct.pvrdma_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %11 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %12 = call %struct.pvrdma_cq* @to_vcq(%struct.ib_cq* %11)
  store %struct.pvrdma_cq* %12, %struct.pvrdma_cq** %5, align 8
  %13 = bitcast %union.pvrdma_cmd_req* %6 to %struct.pvrdma_cmd_destroy_cq*
  store %struct.pvrdma_cmd_destroy_cq* %13, %struct.pvrdma_cmd_destroy_cq** %7, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %15 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.pvrdma_dev* @to_vdev(i32 %16)
  store %struct.pvrdma_dev* %17, %struct.pvrdma_dev** %8, align 8
  %18 = load %struct.pvrdma_cmd_destroy_cq*, %struct.pvrdma_cmd_destroy_cq** %7, align 8
  %19 = call i32 @memset(%struct.pvrdma_cmd_destroy_cq* %18, i32 0, i32 16)
  %20 = load i32, i32* @PVRDMA_CMD_DESTROY_CQ, align 4
  %21 = load %struct.pvrdma_cmd_destroy_cq*, %struct.pvrdma_cmd_destroy_cq** %7, align 8
  %22 = getelementptr inbounds %struct.pvrdma_cmd_destroy_cq, %struct.pvrdma_cmd_destroy_cq* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %25 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pvrdma_cmd_destroy_cq*, %struct.pvrdma_cmd_destroy_cq** %7, align 8
  %28 = getelementptr inbounds %struct.pvrdma_cmd_destroy_cq, %struct.pvrdma_cmd_destroy_cq* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %30 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %29, %union.pvrdma_cmd_req* %6, i32* null, i32 0)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %35 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %42 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %41, i32 0, i32 1
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %45, i32 0, i32 2
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %49 = getelementptr inbounds %struct.pvrdma_cq, %struct.pvrdma_cq* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32*, i32** %47, i64 %50
  store i32* null, i32** %51, align 8
  %52 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %53 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %52, i32 0, i32 1
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %57 = load %struct.pvrdma_cq*, %struct.pvrdma_cq** %5, align 8
  %58 = call i32 @pvrdma_free_cq(%struct.pvrdma_dev* %56, %struct.pvrdma_cq* %57)
  %59 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %8, align 8
  %60 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %59, i32 0, i32 0
  %61 = call i32 @atomic_dec(i32* %60)
  ret void
}

declare dso_local %struct.pvrdma_cq* @to_vcq(%struct.ib_cq*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_destroy_cq*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pvrdma_free_cq(%struct.pvrdma_dev*, %struct.pvrdma_cq*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
