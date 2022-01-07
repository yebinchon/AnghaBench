; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_dereg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/vmw_pvrdma/extr_pvrdma_mr.c_pvrdma_dereg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.ib_udata = type { i32 }
%struct.pvrdma_user_mr = type { %struct.pvrdma_user_mr*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.pvrdma_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%union.pvrdma_cmd_req = type { %struct.pvrdma_cmd_destroy_mr }
%struct.pvrdma_cmd_destroy_mr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PVRDMA_CMD_DESTROY_MR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"could not deregister mem region, error: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvrdma_dereg_mr(%struct.ib_mr* %0, %struct.ib_udata* %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_udata*, align 8
  %5 = alloca %struct.pvrdma_user_mr*, align 8
  %6 = alloca %struct.pvrdma_dev*, align 8
  %7 = alloca %union.pvrdma_cmd_req, align 4
  %8 = alloca %struct.pvrdma_cmd_destroy_mr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %3, align 8
  store %struct.ib_udata* %1, %struct.ib_udata** %4, align 8
  %10 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %11 = call %struct.pvrdma_user_mr* @to_vmr(%struct.ib_mr* %10)
  store %struct.pvrdma_user_mr* %11, %struct.pvrdma_user_mr** %5, align 8
  %12 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  %13 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pvrdma_dev* @to_vdev(i32 %14)
  store %struct.pvrdma_dev* %15, %struct.pvrdma_dev** %6, align 8
  %16 = bitcast %union.pvrdma_cmd_req* %7 to %struct.pvrdma_cmd_destroy_mr*
  store %struct.pvrdma_cmd_destroy_mr* %16, %struct.pvrdma_cmd_destroy_mr** %8, align 8
  %17 = load %struct.pvrdma_cmd_destroy_mr*, %struct.pvrdma_cmd_destroy_mr** %8, align 8
  %18 = call i32 @memset(%struct.pvrdma_cmd_destroy_mr* %17, i32 0, i32 8)
  %19 = load i32, i32* @PVRDMA_CMD_DESTROY_MR, align 4
  %20 = load %struct.pvrdma_cmd_destroy_mr*, %struct.pvrdma_cmd_destroy_mr** %8, align 8
  %21 = getelementptr inbounds %struct.pvrdma_cmd_destroy_mr, %struct.pvrdma_cmd_destroy_mr* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %5, align 8
  %24 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.pvrdma_cmd_destroy_mr*, %struct.pvrdma_cmd_destroy_mr** %8, align 8
  %28 = getelementptr inbounds %struct.pvrdma_cmd_destroy_mr, %struct.pvrdma_cmd_destroy_mr* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %30 = call i32 @pvrdma_cmd_post(%struct.pvrdma_dev* %29, %union.pvrdma_cmd_req* %7, i32* null, i32 0)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %2
  %34 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %35 = getelementptr inbounds %struct.pvrdma_dev, %struct.pvrdma_dev* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @dev_warn(i32* %37, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %2
  %41 = load %struct.pvrdma_dev*, %struct.pvrdma_dev** %6, align 8
  %42 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %5, align 8
  %43 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %42, i32 0, i32 2
  %44 = call i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev* %41, i32* %43)
  %45 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %5, align 8
  %46 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ib_umem_release(i32 %47)
  %49 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %5, align 8
  %50 = getelementptr inbounds %struct.pvrdma_user_mr, %struct.pvrdma_user_mr* %49, i32 0, i32 0
  %51 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %50, align 8
  %52 = call i32 @kfree(%struct.pvrdma_user_mr* %51)
  %53 = load %struct.pvrdma_user_mr*, %struct.pvrdma_user_mr** %5, align 8
  %54 = call i32 @kfree(%struct.pvrdma_user_mr* %53)
  ret i32 0
}

declare dso_local %struct.pvrdma_user_mr* @to_vmr(%struct.ib_mr*) #1

declare dso_local %struct.pvrdma_dev* @to_vdev(i32) #1

declare dso_local i32 @memset(%struct.pvrdma_cmd_destroy_mr*, i32, i32) #1

declare dso_local i32 @pvrdma_cmd_post(%struct.pvrdma_dev*, %union.pvrdma_cmd_req*, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @pvrdma_page_dir_cleanup(%struct.pvrdma_dev*, i32*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.pvrdma_user_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
